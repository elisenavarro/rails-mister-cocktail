class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end

# # retrieve the cocktail
# # @dose: {description: "fefefe", cocktail_id: 12, ingredient_id: 343}
# # @dose.cocktail
# def cocktail
#   Cocktail.find(self.cocktail_id)
# end


# # set the cocktail
# # @dose: {description: "fefefe", cocktail_id: 12, ingredient_id: 343}
# # @dose.cocktail = @cocktail
# def cocktail=(cocktail)
#   self.cocktail_id = cocktail.id
# end
