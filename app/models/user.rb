class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bikes
  # bookings the User has made on someone else's bikes:
  has_many :bookings
  # bookings the user has received on the Bikes they've uploaded:
  has_many :received_bookings, through: :bikes, source: :user
  has_one_attached :photo
end
