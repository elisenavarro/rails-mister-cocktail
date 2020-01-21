class AddReviewToCocktail < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.reference :cocktail, foreign_key: :true
      t.timestamps
    end
  end
end
