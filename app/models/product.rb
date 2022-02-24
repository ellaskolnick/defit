class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  CATEGORIES = %w[Equipment Clothing Kids].freeze
  validates :name, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_category_and_size,
  #                 against: [ :name, :categroy, :size ],
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }
  # multisearchable against: [ :name, :categroy, :size ]
end
