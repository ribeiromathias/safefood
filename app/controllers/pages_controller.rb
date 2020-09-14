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

  def search
     if params[:name].present?
      @meals = Meal.where("name ILIKE ?", "%#{params[:name]}%")
    elsif current_user.present?
      @meals = Meal.all# sorry food not available to be done
    end
  
    redirect_to root_path(@meals)
  end

end

