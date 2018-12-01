class Restaurant < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { in: 2..32 }
  validates :genre, presence: true, length: { in: 2..32 }
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
