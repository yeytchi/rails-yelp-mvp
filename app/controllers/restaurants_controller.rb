class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private
  def restaurant_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
