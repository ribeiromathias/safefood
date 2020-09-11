class SellerOrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    authorize @order, :seller_show?

  end

  def index
    @orders = Order.includes(:order_items).where(order_items: {
      meal_id: current_user.meals.ids
    }, status: ["pending", "approved"])
    authorize @orders, :seller_index?
  end

  def update
    @order = Order.find(params[:id])
    authorize @order, :seller_update?
    if ["approved", "cancelled"].include?(params[:status])
      @order.update(status: params[:status])
      redirect_to seller_orders_path
    else
      redirect_to seller_orders_path, alert: "Something went wrong"
    end

  end

  private
  def order_params
    params.require(:order).permit(:total_price, :status)
  end
end
