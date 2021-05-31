class AddCocktailToNeighborhood < ActiveRecord::Migration[6.1]
  def change
    add_reference :neighborhoods, :cocktail, null: false, foreign_key: true
  end
end
