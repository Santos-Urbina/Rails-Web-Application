class Restaurant < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    validates :genre, presence: true, length: {minimum: 3}
end
