class MealsController < ApplicationController
  # create
  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    authorize @meal
    @meal.user = current_user  # current logged at the current moment - helper from rails
    # authorize @meal  # pundit
    if @meal.save
      redirect_to @meal, notice: 'Your meal was successfully created.' # this refers to the show @meal
    else
      render :new
    end
  end

  # read
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    authorize @meal
  end
  
  # update
  def edit
    @meal = Meal.find(params[:id])
    authorize @meal
  end

  def update
    @meal = Meal.find(params[:id])
    authorize @meal
    if @meal.update(meal_params)
      redirect_to meal_path(@meal), notice: 'Your meal was successfully updated.'
    else
      render :edit
    end
  end

  def destroy 
    @meal = Meal.find(params[:id])
    authorize @meal
    @meal.destroy
    redirect_to orders_path
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :offer_price, :description, :restriction, :photo)
  end 

end
