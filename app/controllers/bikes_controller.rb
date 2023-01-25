class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {bike: bike}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @bikes = Bike.all
    @markers = [{
      lat: @bike.latitude,
      lng: @bike.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {bike: @bike}),
      marker_html: render_to_string(partial: "marker")
    }]
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
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def destroy
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:name, :biketype_id, :category_id, :color_id, :address, :photo)
  end
end
