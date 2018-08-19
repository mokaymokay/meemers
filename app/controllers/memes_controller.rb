class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end
  
  def create
    @meme = Meme.new(meme_params)
    @meme.save
  end

  private

  def meme_params
    params.require(:meme).permit(:title, :imgur_url, :image_link)
  end
end
