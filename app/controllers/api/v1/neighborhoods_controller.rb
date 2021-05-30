class Api::V1::NeighborhoodsController < ApplicationController
    
    def index
        neighborhoods = Neighborhood.all
        render json: NeighborhoodsSerializer.new(neighborhoods)
    end

end 



