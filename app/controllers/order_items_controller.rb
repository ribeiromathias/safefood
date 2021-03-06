class OrderItemsController < ApplicationController
  
  def create
    order = current_user.orders.find_or_create_by(
      status: 'open'
    )
    
    order_item = OrderItem.new(order_item_params)
    @meal = Meal.find(params[:meal_id])
    order_item.order = order
    order_item.meal = @meal
    order_item.unit_price = @meal.offer_price
    authorize order_item

    if order_item.save
      redirect_to orders_path
    else 
      render 'meals/show'
    end
  end

  def destroy
    order_item = OrderItem.find(params[:id])
    authorize order_item
    order_item.destroy
    redirect_to meals_path
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity)
  end 

end
