class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes
  has_many :likes
  has_many :comments
  validates :email, presence: true, uniqueness: true
  has_attached_file(
      :user_pic,
      styles: {
        thumb: '150x150>',
        square: '200x200#',
        medium: '300x300>'
      },
    )
    validates_attachment_content_type :user_pic, :content_type => /\Aimage\/.*\Z/
end
