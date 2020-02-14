class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, presence: true, uniqueness: true

  has_one_attached :photo

  def grade
    grade = 0
    self.reviews.each do |review|
      grade += review.rating
    end
    grade = grade.fdiv(self.reviews.length).round()
  end
end
