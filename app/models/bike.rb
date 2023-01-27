class Bike < ApplicationRecord
  belongs_to :biketype
  belongs_to :category
  belongs_to :color
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :address, presence: true

  include PgSearch::Model
  multisearchable against: [:name, :address]
end
