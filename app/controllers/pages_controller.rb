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
     if params[:query].present?
      sql_query = " \
      meals.restriction @@ :query \
      OR users.name @@ :query \
      "
      @meals = Meal.joins(:user).where(sql_query, query: "%#{params[:query]}%")
     else
      @meals = Meal.all# sorry food not available to be done
    end
  end
end

# def index
    #if params[:query].present?
     # sql_query = "name ILIKE :query OR restriction ILIKE :query"
      #@meals = Meal.where(sql_query, query: "%#{params[:query]}%")
    #else
     # @meals = meal.all
    #end
  #end

# ANDRE INPUTS:
# filter by name on controller
# hidden tag in view, to store restriction
# controller action works with both of the filter


