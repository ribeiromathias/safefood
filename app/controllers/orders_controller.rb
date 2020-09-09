class OrdersController < ApplicationController
  
  def show
    @order = Order.find(params[:id]) 
  end

  def index
    @active_order = current_user.orders.find_by(status: "open")
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      # order_path(@order) == order_path(@order.id)  ---> to show page
      redirect_to order_path(@order), notice: 'Your order was successfully updated.' 
    else
      redirect_to order_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:total_price, :status)
  end 
end
