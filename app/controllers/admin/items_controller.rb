class Admin::ItemsController < ApplicationController
  def index
    @items=Item.all
    @items=Item.all.page(params[:page]).per(10)
  end

  def show
    @item=Item.find(params[:id])
  end

  def edit
    @item=Item.find(params[:id])
  end
  
  def update
    @item=Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item)
  end
  
  def destroy
    @item=Item.find(params[:id])
    @item.destroy
    redirect_to admin_items_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:genre_id, :user_id, :name, :description, :price, :sale_method, :sale_status, :image)
  end
end
