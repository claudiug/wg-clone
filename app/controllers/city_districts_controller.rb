class CityDistrictsController < ApplicationController

  def index
    @city_districts = CityDistrict.all
  end

  def show
    @city_district = CityDistrict.find(params[:id])
  end

  def city_district_params
    params.require(:city_district).permit(:name, :population, :salary, :medium_rent)
  end
end
