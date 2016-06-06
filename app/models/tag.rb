class Tag < ActiveRecord::Base
  has_and_belongs_to_many :recipes

  validates :word, presence: true, uniqueness: true

  validate :starts_with_octothorpe

  private
  def starts_with_octothorpe
    if self.word[0] != "#"
    errors.add(
      :hashtag,
      "must be the first value in the word."
    )
    end
  end

end
