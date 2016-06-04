class Recipe < ActiveRecord::Base

  validates :description, presence: true
  validates :cooking_instruction, presence: true
end
