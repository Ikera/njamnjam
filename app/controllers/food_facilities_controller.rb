class FoodFacilitiesController < ApplicationController
  def index
    food_facilities = FoodFacility.all
    render json: food_facilities, status: :ok
  end
end
