class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  CATEGORIES = %w[Equipment Clothing Kids].freeze

  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
