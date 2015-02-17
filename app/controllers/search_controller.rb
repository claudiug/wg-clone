class SearchController < ApplicationController

  def index
    if params["search"]
      #results -> from es
      #records -> from db
      @offers = Offer.search(params["search"]).page(params[:page]).results.response
    end
  end
end
