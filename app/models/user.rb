class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :articles
  validates :nickname, presence: true,
                       format: { with: /\A[ぁ-んァ-ヶー－〜・]+\z/, message: 'は6文字以内のひらがな･カタカナで入力してください' }

  validates :password, format: { with: /\A[a-zA-Z0-9!#$%&()*+,.:;=?@\[\]^_{}-]+\z/, message: 'が不正な値です' }
end
