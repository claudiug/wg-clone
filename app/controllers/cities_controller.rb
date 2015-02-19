class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :population, :medium_salary, :medium_rent)
  end
end
