class Flat < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :address, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :price_per_night, presence: true, numericality: true
  validates :number_of_guests, presence: true, numericality: { only_integer: true }
end
