class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @booking.status = params[:status]
    @booking.save
  end

  def accept
    @booking.status = params[:status]
    @booking.save
  end
end
