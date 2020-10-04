class Post < ApplicationRecord
  validates :image, :title, :act, :words, :reason, :category_id,  presence: true

  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category, optional: true
end
