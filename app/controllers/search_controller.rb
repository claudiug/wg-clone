class SearchController < ApplicationController

  def index
    if params["query"]
      #results -> from es
      #records -> from db
      @offers = Offer.search(params["query"]).page(params[:page]).results.response
    end
  end


  def autocomplete
    render json: Offer.search(params["query"]).results.map { |t| {name: t._source.title} }
  end
end
