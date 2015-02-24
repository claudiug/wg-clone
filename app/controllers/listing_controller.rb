class ListingController < ApplicationController
  def index
    @offers = offer_scope
    @offers = @offers.max_room_size(params[:max_room_size]) if params[:max_room_size].present?
    @offers = @offers.mim_room_size(params[:mim_room_size]) if params[:mim_room_size].present?
    @offers = @offers.max_cost(params[:max_cost]) if params[:max_cost].present?
    @offers = @offers.min_cost(params[:min_cost]) if params[:min_cost].present?
  end

  def show
    @offer = offer_scope.find(params[:id])
  end

  private

  def offer_scope
    City.find_by(name: params[:city]).offers
  end

  def offer_in_location
    @offer.location
  end
end
