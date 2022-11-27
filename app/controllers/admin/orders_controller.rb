class Admin::OrdersController < ApplicationController
  def index
    @orders=Order.all
  end

  def show
    @order=Order.find(params[:id])
    @order_item = @order.order_items
  end
  
  private
  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name)
  end
end
