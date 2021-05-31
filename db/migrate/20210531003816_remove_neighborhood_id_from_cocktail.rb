class RemoveNeighborhoodIdFromCocktail < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :neighborhood_id, :integer
  end
end
