class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show; end

  def new
  end

  def create
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
