class Craft < ApplicationRecord
    validates :name, :type, presence: true
    validates :price, numericality: {greater_than_or_equal_to: 0}
end
