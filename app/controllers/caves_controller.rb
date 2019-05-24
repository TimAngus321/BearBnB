class CavesController < ApplicationController
  def index
    if params[:query].present?
      @caves = Cave.where("address ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
    else
      @caves = Cave.all.where.not(latitude: nil, longitude: nil)
    end

    @markers = @caves.map do |cave|
      {
        lat: cave.latitude,
        lng: cave.longitude,
        infoWindow: render_to_string(partial: "infoWindow", locals: { cave: cave }),
        image_url: helpers.asset_url('https://res.cloudinary.com/beartechnologies/image/upload/v1558696738/BearBnB/mappin2_vbuyr3.png')
      }
    end
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

  def edit
    @cave = Cave.find(params[:id])
  end

  def update
    @cave = Cave.find(params[:id])
    if @cave.update(cave_params)
      redirect_to host_dashboard_path
    else
      render "pages/host_dashboard"
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
