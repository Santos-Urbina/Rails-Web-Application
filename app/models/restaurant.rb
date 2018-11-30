class Restaurant < ApplicationRecord
  has_many :meals
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  validates :genre, presence: true, length: { minimum: 3 }
end
