class ReviewsController < ApplicationController
  # @meal for `simple_form_for`
  def new
    @meal = Meal.find(params[:meal_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    #`meal_id` to associate review with corresponding meal
    @meal = Meal.find(params[:meal_id])
    @review.meal = @meal
    if @review.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to meals_path(@review.meals)
  end

end
