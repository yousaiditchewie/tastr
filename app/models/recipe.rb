class Recipe < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :likes
  has_many :comments
  validates :description, presence: true
  validates :cooking_instruction, presence: true
   has_attached_file(
      :recipe_pic,
      styles: {
        thumb: '150x150>',
        square: '200x200#',
        medium: '300x300>'
      },
    )
  ​
    validates_attachment_content_type :recipe_pic, :content_type => /\Aimage\/.*\Z/
end
