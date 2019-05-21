class ReservationsController < ApplicationController
  def confirmation
    @cave = Cave.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @cave = Cave.find(params[:cave_id])
  end


  def update

  end

  def create

  end

  # Not needed?
  # def show
  # end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to caves_path
  end

  private

  def cave_params
    params.require(:reservation).permit(:address, :square_meters, :price_per_night)
  end
end
