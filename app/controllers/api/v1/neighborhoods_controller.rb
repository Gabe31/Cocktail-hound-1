class Api::V1::NeighborhoodsController < ApplicationController
    
    def index
        neighborhoods = Neighborhood.all
        render json: NeighborhoodSerializer.new(neighborhoods)
    end

end 



