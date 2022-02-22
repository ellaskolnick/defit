class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  CATEGORIES = %w[Equipment Clothing].freeze
  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
