class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  skip_after_action :verify_authorized
  def home
    #search box controller for Where ILIKE
    if params[:restriction].present?
      @meals = Meal.where("restriction ILIKE ?", "%#{params[:restriction]}%")
    else
      @meals = Meal.all
    end
  end
end

