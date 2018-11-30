class Review < ApplicationRecord
  belongs_to :restaurant
  validates :reviewer, presence: true, length: { in: 1..32 }
  validates :body, presence: true, length: { in: 1..512 }
end
