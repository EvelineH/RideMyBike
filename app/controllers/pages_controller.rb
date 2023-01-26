class PagesController < ApplicationController

  def home
    @bikes = Bike.all
  end

  def dashboard
    @owned_bikes = Bike.where(user: params[current_user])
    @bookings = current_user.bookings
    @received_bookings = current_user.received_bookings
  end

  private

  def set_bike
    @owned_bikes = Bike.find(current_user)
  end
end
