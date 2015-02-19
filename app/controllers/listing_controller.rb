class ListingController < ApplicationController
  def index
    @offers = Offer.all.page(params[:page])
  end
end
