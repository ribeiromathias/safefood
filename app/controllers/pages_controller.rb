class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    #raise
    #search box controller for Where ILIKE
    if params[:restrictions].present?
      #raise
      @meals = Meal.where("name ILIKE ?", "%#{params[:restrictions]}%")
    else
      @meals = Meal.all
    end
  end
end
