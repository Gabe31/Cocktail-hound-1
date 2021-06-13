class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: CocktailSerializer.new(cocktails)
    end

    def create
        cocktail = Cocktail.new(cocktail_params)
        if cocktail.save
            render json: cocktail, status: :accepted
        else
            render json: {errors: cocktail.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        cocktail = Cocktail.find_by_id(params[:id])
        cocktail.destroy
        render json: {message: "#{cocktail.name} was successfully deleted"}
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:title, :description, :bar, :neighborhood_id)
    end
end 
