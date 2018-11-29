class RestaurantsController < ApplicationController
  include RestaurantHelper

  def index
    @restaurants = Restaurant.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comments = @restaurant.comments
  end

end
