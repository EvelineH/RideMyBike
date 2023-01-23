class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
