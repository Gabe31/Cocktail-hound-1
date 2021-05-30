class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :title
      t.string :description
      t.string :bar
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
