class SearchesController < ApplicationController

  def index
  end

  def create
    @query = params[:search][:query]
    @search_results = Search.new(@query).request
    @memes = @search_results['data']
    @valid_memes = @memes.select { |meme| meme['images'] != nil }
  end

end