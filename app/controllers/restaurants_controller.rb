class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    @restaurant = User.find(params[:id])
    authorize @restaurant
    if params[:restriction].present?
      @meals = @restaurant.meals.where(restriction: params[:restriction])
    else
      @meals = @restaurant.meals
    end
  end
end
