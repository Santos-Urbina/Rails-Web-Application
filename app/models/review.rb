class Review < ApplicationRecord
  belongs_to :restaurant
  validates :reviewer, presence: true, length: { in: 2..32 }
  validates :body, presence: true, length: { in: 2..512 }
end
