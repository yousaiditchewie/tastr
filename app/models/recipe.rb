class Recipe < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :likes
  has_many :comments
  validates :description, presence: true
  validates :cooking_instruction, presence: true
end
