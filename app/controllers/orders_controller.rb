class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    authorize @order
  end

  def index
    @active_orders = current_user.orders.where(status: "open")
    @pending_orders = current_user.orders.where(status: "pending")
    @confirmed_orders = current_user.orders.where(status: "confirmed")
  end

  def update
    @order = Order.find(params[:id])
    authorize @order
    if ["pending", "cancelled", "confirmed"].include?(params[:status])
      @order.update(status: params[:status])
      if params[:status] == "pending"
        redirect_to pending_path 
      elsif params[:status] == "cancelled"
        redirect_to restaurant_path(id: @order.order_items.last.meal.user.id, restriction: @order.order_items.last.meal.restriction)
        
      end
    else
      redirect_to orders_path, alert: "Something went wrong"
    end

  end

  def pending_orders
    @pending_orders = current_user.orders.where(status: "pending")
    authorize(Order) 
  end

  private
  def order_params
    params.require(:order).permit(:total_price, :status)
  end

  def active_order_hash(orders)
    open_orders = {}
    orders.each do |order|
      
    end
  end
end
