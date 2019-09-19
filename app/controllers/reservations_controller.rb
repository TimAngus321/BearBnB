class ReservationsController < ApplicationController
  def confirmation
    @cave = Cave.find(params[:cave_id])
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @cave = Cave.find(params[:cave_id])
  end

  def create
    @cave = Cave.find(params[:cave_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.cave = @cave
    if @reservation.save
      @cave.availability = false
    else
      render :new
    end
    redirect_to confirmation_path(@cave, @reservation)
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to dashboard_path
    else
      render "pages/dashboard"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to dashboard_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
