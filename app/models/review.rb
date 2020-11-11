class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: { message: "cannot be blank"}
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }

end
