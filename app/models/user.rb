class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
  has_many :nices, dependent: :destroy
  has_many :nice_articles, through: :nices, source: :article
  validates :nickname, presence: true,
                       format: { with: /\A[ぁ-んァ-ヴー－〜・]+\z/, message: 'は6文字以内のひらがな･カタカナで入力してください' }

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/, message: 'は半角英数字で入力してください' }
end
