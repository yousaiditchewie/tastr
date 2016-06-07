class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :ingredients
  validates :description, presence: true
  validates :cooking_instruction, presence: true
end
