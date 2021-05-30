class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: CocktailsSerializer.new(adventures)
    end

    def create
        cocktail = Cocktail.new(cocktail_params)
        if cocktail.save
            render json: cocktail, status: :accepted
        else
            render json: {errors: cocktail.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:title, :description, :bar, :neighborhood_id)
    end
end 
