class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  has_one :owner, through: :bike, source: :user
  validates :start_date, presence: true
  validates :end_date, presence: true
end
