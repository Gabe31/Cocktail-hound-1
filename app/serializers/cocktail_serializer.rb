class CocktailSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :bar, :neighborhood_id, :neighborhood
end
