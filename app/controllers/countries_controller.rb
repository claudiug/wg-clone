class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

    def country_params
      params.require(:country).permit(:name, :description, :population)
    end
end
