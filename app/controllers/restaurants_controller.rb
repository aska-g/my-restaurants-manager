class RestaurantsController < ApplicationController
  # Let's fake a DB
  RESTAURANTS = [
    { name: "Dishoom", category: "indian" },
    { name: "Sushi Samba", category: "japanese" }
  ]
  def index
    # tommorrow @restaurants = Restaurant.all
    @category = params[:food_type]
    if @category == '' || @category.nil?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
    end
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:category]}'"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
