class RentTypesController < ApplicationController
  before_action :set_rent_type, only: [:show, :edit, :update, :destroy]

  # GET /rent_types
  # GET /rent_types.json
  def index
    @rent_types = RentType.all
  end

  # GET /rent_types/1
  # GET /rent_types/1.json
  def show
  end

  # GET /rent_types/new
  def new
    @rent_type = RentType.new
  end

  # GET /rent_types/1/edit
  def edit
  end

  # POST /rent_types
  # POST /rent_types.json
  def create
    @rent_type = RentType.new(rent_type_params)

    respond_to do |format|
      if @rent_type.save
        format.html { redirect_to @rent_type, notice: 'Rent type was successfully created.' }
        format.json { render :show, status: :created, location: @rent_type }
      else
        format.html { render :new }
        format.json { render json: @rent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_types/1
  # PATCH/PUT /rent_types/1.json
  def update
    respond_to do |format|
      if @rent_type.update(rent_type_params)
        format.html { redirect_to @rent_type, notice: 'Rent type was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_type }
      else
        format.html { render :edit }
        format.json { render json: @rent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_types/1
  # DELETE /rent_types/1.json
  def destroy
    @rent_type.destroy
    respond_to do |format|
      format.html { redirect_to rent_types_url, notice: 'Rent type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_type
      @rent_type = RentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_type_params
      params.require(:rent_type).permit(:name)
    end
end
