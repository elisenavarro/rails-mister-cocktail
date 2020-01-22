class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      # return to the show (or index) page once the new cocktail saved
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
    # allows to access new instance of a dose when showing cocktail
    @dose = Dose.new
    # can remove doses#new from router, controller, view
    # > bc new dose lives on the cocktail show page
    # @review = Review.new
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :ingredient, :dose, :photo)
  end
end
