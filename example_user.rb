
#  演習用　普段は使わない
class User
  attr_accessor :name, :email

  # user名とメールアドレス（属性: attribute）に対応するアクセサーをそれぞれ作成する
  # アクセサーを作成すると、そのデータ取り出すメソッド（getter）と、データに代入するメソッド（setter）をそれぞれ定義してくれる。

  #具体的にはこの行を実行したことによりインスタンス変数@nameと@emailにアクセスするための、メソッドが用意される

  # initialize メソッドは  User.new を実行すると自動的に呼び出されるメソッド
  # この場合のinitializeメソッドは attributes　という引数を１つ取る。
  # attributes変数は空のハッシュをデフォルト値として持つため、
  # 名前やメールアドレスを持たないユーザを作ることができる。
  # rails c で「user = User.new(name: "Michael Hartl", email: "mhartl@example.com")」ようにすることで値を渡せる
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  # 文字列の式展開を利用して、@nameと@emailに割り当てられた値をユーザのメールアドレスとして構成する。
  def formatted_email
    "#{@name} <#{@email}>"
  end
end
