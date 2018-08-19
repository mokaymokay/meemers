class SearchesController < ApplicationController
  def index
  end

  def create
    @query = params[:search][:query]
    @search_results = Search.new(@query).request
    render 'show'
  end

  def show
    @search_results
  end
end