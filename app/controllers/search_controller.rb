class SearchController < ApplicationController

  def index
    if params["q"]
      @offers = Offer.search(params["q"])
    end
  end
end
