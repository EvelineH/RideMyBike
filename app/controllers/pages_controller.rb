class PagesController < ApplicationController
  # before_action :set_bike, only: [:dashboard]

  def home
    @bikes = Bike.all
  end

  def dashboard
    @owned_bikes = current_user.bikes
    @bookings = current_user.bookings
    @received_bookings = current_user.received_bookings
    @markers = @owned_bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bike: bike}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  private

  # def set_bike
    # @bike = Bike.where(params[current_user])
  # end
end
