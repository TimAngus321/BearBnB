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
    if Cave.create(cave_params)
      redirect_to caves_path
    else
      render new
  end

  def destroy
    @cave = Cave.find(params[:id])
    @cave.destroy
    redirect_to caves_path
  end

  private

  def cave_params
    params.require(:cave).permit(:address, :square_meters, :price_per_night)
  end
end
