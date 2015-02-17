class CityDistrictsController < ApplicationController
  before_action :set_city_district, only: [:show, :edit, :update, :destroy]

  # GET /city_districts
  # GET /city_districts.json
  def index
    @city_districts = CityDistrict.all
  end

  # GET /city_districts/1
  # GET /city_districts/1.json
  def show
  end

  # GET /city_districts/new
  def new
    @city_district = CityDistrict.new
  end

  # GET /city_districts/1/edit
  def edit
  end

  # POST /city_districts
  # POST /city_districts.json
  def create
    @city_district = CityDistrict.new(city_district_params)

    respond_to do |format|
      if @city_district.save
        format.html { redirect_to @city_district, notice: 'City district was successfully created.' }
        format.json { render :show, status: :created, location: @city_district }
      else
        format.html { render :new }
        format.json { render json: @city_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /city_districts/1
  # PATCH/PUT /city_districts/1.json
  def update
    respond_to do |format|
      if @city_district.update(city_district_params)
        format.html { redirect_to @city_district, notice: 'City district was successfully updated.' }
        format.json { render :show, status: :ok, location: @city_district }
      else
        format.html { render :edit }
        format.json { render json: @city_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_districts/1
  # DELETE /city_districts/1.json
  def destroy
    @city_district.destroy
    respond_to do |format|
      format.html { redirect_to city_districts_url, notice: 'City district was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_district
      @city_district = CityDistrict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_district_params
      params.require(:city_district).permit(:name, :population, :salary, :medium_rent)
    end
end
