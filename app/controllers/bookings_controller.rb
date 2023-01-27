class BookingsController < ApplicationController
  before_action :set_bike, only: %i[new create]
  before_action :set_booking, only: %i[show update destroy]

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
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.status = params[:status]
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
  end

  private

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :request)
  end
end
