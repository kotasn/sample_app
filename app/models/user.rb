class User < ApplicationRecord
  # emailを保存する前に文字列を小文字に変換するメソッド（コールバックメソッド）
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # ↓ 「**@..com」の場合のvalidationを追加
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  # 入力したパスワードをハッシュ化してDB内のpassword_digestカラムに保存
  # gas_secure_password を使うためには、bcrypt gemをGemfileに追加する必要がある
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
