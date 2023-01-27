class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_owned_bikes, only: :dashboard
  before_action :set_user_bookings, only: :dashboard
  before_action :set_received_bookings, only: :dashboard
  before_action :set_pending_bookings, only: :dashboard

  def home
    @bikes = Bike.all
  end

  def dashboard
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

  def set_owned_bikes
    @owned_bikes = current_user.bikes
  end

  def set_user_bookings
    @user_bookings = current_user.bookings
  end

  def set_received_bookings
    @received_bookings = current_user.received_bookings
  end

  def set_pending_bookings
    @pending_bookings = current_user.received_bookings.where(status: nil)
  end
end
