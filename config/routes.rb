Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # FOR RESTAURATNS
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :create, :new, :show] do
      # FOR DOSE (NEED TO NEST TO GET THE COCKDAIL/ID FROM URL)
    resources :doses, only: [:create] do
      # FOR INGREDIENTS
      resources :ingredients, only: [:new, :create]
    end
  end
  resources :doses, only: [:destroy]
end

# Cocktails >>
  # GET Index of all Cocktails >> cocktails/
  # GET Create New Cocktail
  # POST New Cocktail
# Ingredients >> GET Show single Cocktail w/ dose of ingredient >> cocktails/ID

# Doses >>
  # UPDATE Dose (ingredient/description pair) for Cocktail
  # Dropdown list of ingredients
    # GET "cocktails/42/doses/new"
    # POST "cocktails/42/doses"
  # DELETE a dose of an existing Cocktail
