class RestaurantsController < ApplicationController
  include RestaurantHelper
  
  def index
    @restaurants = Restaurant.all()
    count = Restaurant.count
    @restaurant_page_count = get_page_count(count)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments
  end

end
