class Restaurant < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
  validates :genre, presence: true, length: { minimum: 3 }
  validates :rating, presence: true, length: { is: 1 }
end
