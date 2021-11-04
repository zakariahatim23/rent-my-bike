class BikesController < ApplicationController
  before_action :find_bike, only: [:create, :update, :destroy, :show, :edit]

  def index 
    if params[:query].present?
      @bikes = Bike.where(title: params[:query])
    else
      @bikes = Bike.all
    end
  end

  def new
    @bike = Bike.new
  end

  def update
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def destroy
     @bike.destroy
     redirect_to bike_path
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

    private

  def bike_params
    params.require(:bike).permit(:title, :description, :location, :category, :price)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
