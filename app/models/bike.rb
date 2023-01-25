class Bike < ApplicationRecord
  belongs_to :user
  belongs_to :biketype
  belongs_to :category
  belongs_to :color
  has_many :users, through: :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true
  validates :address, presence: true
end
