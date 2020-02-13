class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    raise
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new

  end

  def create

  end
end
