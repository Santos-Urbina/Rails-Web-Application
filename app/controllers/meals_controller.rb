class MealsController < ApplicationController
    
    def create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @meal = @restaurant.meals.create(meal_params)
        redirect_to restaurant_path(@restaurant)
    end
    
    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id])
        @meal = @restaurant.meals.find(params[:id])
        @meal.destroy
        redirect_to restaurant_path(@restaurant)
    end
    
    private def meal_params
        params.require(:meal).permit(:name, :price)
    end
end
