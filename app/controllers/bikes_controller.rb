class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
    @biketype = Biketype.all
    @categorie = Category.all
    @color = Color.all
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bikes_path(@bikes)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :biketype_id, :category_id, :color_id, :location, :photo)
  end
end
