class ReservationsController < ApplicationController
  def new
    
  end

  def index
    
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @bike = Bike.find(params[:bike_id])
    @reservation.list = @bike
    if @reservation.save
      redirect_to bike_path(@bike)
      else
        render 'bikes/show'
      end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to bike_path(@reservation.bike)
  end

  private
  
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :price_total)
    end
  
end
