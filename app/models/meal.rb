class Meal < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true, length: { in: 2..64 }
  validates :price, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 8 }
end
