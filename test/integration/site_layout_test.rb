require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

# ・特定のリンクが存在するかを「assert_select」を使いテストする。
# ・aタグとhref属性をオプションで指定して調べる。
# ・a[href=?] ？マークを後述の***_pathに置換している
# ・count: 2 はリンクの個数も調べる
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
  end
end
