class Bike < ApplicationRecord
  belongs_to :user
  belongs_to :biketype
  belongs_to :category
  belongs_to :color
  has_many :users, through: :bookings

  validates :name, presence: true
end
