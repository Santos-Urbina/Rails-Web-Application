class RestaurantsController < ApplicationController
    def show
        @restaurant = Restaurant.find(params[:id])
    end
    
    def new
    end
    
    def create
        @restaurant = Restaurant.new(restaurant_params)
        
        @restaurant.save
        redirect_to @restaurant
    end
end


private
    def restaurant_params
        params.require(:restaurant).permit(:name, :genre, :rating)
    end