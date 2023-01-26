class BookingsController < ApplicationController
  before_action :set_bike, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    # @booking.user = current_user
    if @booking.save
      redirect_to bookings(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
