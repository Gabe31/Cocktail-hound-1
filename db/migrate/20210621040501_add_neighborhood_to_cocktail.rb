class AddNeighborhoodToCocktail < ActiveRecord::Migration[6.1]
  def change
    add_reference :cocktails, :neighborhood, foreign_key:true
  end
end
