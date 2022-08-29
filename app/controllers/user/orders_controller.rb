class User::OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  
  def info
    #情報確認画面
    @items = current_user.items
    @order = Order.new(order_params)
    #@order.billing_amount = ordered_price + shipping
    if params[:order][:select_address] == "0"
      @order = Order.new(order_params)
      @order.postal_code = current_user.postal_code
      @order.address = current_user.address
      @order.name = current_user.first_name + current_user.last_name
    elsif params[:order][:select_address] == "1"
      @order = Order.new(order_params)
      @order.postal_code = @address.postal_code
      @order.address = @address.address
      @order.name = @address.name
    elsif params[:order][:select_address] == "2"
      @order.postal_code = ordered.postal_code
      @order.address = ordered.address
      @order.name = ordered.name
    else
      flash[:notice] = "errer"
      render :new
    end
  end
  
  
  def create
    #確定処理
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save!
    current_customer.cart_items.each do |cart_item|
      @order_item = OrderItem.new
      @order_item.item_id = cart_item.item_id
      @order_item.item_count = cart_item.item_count
      @order_item.ordered_price = (cart_item.item.price*1.1).round.to_i
      @order_item.order_id = @order.id
      @order_item.save
    end
    current_customer.cart_items.destroy_all
    redirect_to public_orders_complete_path
  end

  def comp
  end

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
    @order_item = @order.order_items
  end
  
  private
  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name)
  end
end
