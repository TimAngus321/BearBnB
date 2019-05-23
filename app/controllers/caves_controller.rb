class CavesController < ApplicationController
  def index
    @caves = Cave.all
  end

  def show
    @cave = Cave.find(params[:id])
  end

  def new
    @cave = Cave.new
  end

  def create
    @cave = Cave.new(cave_params)
    @cave.user = current_user
    if @cave.save!
      redirect_to caves_path
    else
      render :new
    end
  end

  def destroy
    @cave = Cave.find(params[:id])
    @cave.destroy
    redirect_to caves_path
  end

  private

  def cave_params
    params.require(:cave).permit(:address, :square_meters, :price_per_night, :occupancy, :availability, :description, :photo)
  end
end
