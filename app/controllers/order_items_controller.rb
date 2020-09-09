class OrderItemsController < ApplicationController
  
  def create
    # shopping_cart = current_user.shopping_carts.find_or_create_by(
    #  status: 'open'
    #)

    order_item = OrderItem.find(params[:id])

    order_item = OrderItem.new
    order_item.order_id         = order.id
    order_item.quantity      = meal * order_item.quantity # times what the user will add
    order_item.price         = order_item.quantity * meal.price # times what the user will add

    if order_item.save
      redirect_to meals_path
    end
  end

  def destroy
    order_item = OrderItem.find(params[:id])
    order_item.destroy
    redirect_to meals_path
  end

end
