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
      redirect_to orders_path
    else
      redirect_to orders_path, alert: "Something went wrong"
    end

  end

  private
  def order_params
    params.require(:order).permit(:total_price, :status)
  end
end
