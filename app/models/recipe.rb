class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ingredients
  has_many :likes
  has_many :comments
  validates :description, presence: true
  validates :cooking_instruction, presence: true
end
