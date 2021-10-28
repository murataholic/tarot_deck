class Article < ApplicationRecord
  has_one :deck
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
end
