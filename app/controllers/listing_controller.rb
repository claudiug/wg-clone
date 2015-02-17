class ListingController < ApplicationController
  def index
    @offers = Offer.all
  end
end
