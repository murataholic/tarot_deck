class Deck < ApplicationRecord
  belongs_to :user
  belongs_to :article

  include ActiveHash::Associations
  has_many :arcana
  has_many :monsters
end
