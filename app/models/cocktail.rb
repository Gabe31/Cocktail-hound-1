class Cocktail < ApplicationRecord
    belongs_to :neighborhood

    validates :title, :description, :bar, :neighborhood_id, presence: true
end
