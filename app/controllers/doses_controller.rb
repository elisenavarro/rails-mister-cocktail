class DosesController < ApplicationController
  # Not needed here because the form for a new dose is in the show view of a cocktail
  # def new
  #   @dose = Dose.new
  #   # FIND THE COCKTAIL AND RETURN THE ID, DOSE BELONGS TO COCKTAIL
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  # end

  def create
    # NEED A COCKTAIL ID TO ASSOCIATE WITH DOSE WITH COCKTAIL
    @cocktail = Cocktail.find(params[:cocktail_id])
    # Dose given by user
    @dose = Dose.new(dose_params)
    # @DOSE.COCKTIAL IS BEING ACCESSED HERE (NIL TO START)
    # OVERRIDE THE NIL WITH DETAILS OF THE COCKTAIL (FROM USER)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktails_path(@cocktail)
    else
      @review = Review.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    # @cocktail variable to have the value of @dose for the cocktail object that said dose belongs to
    # extract the cocktail that the dose belongs to
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
