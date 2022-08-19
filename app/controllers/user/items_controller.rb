class User::ItemsController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def new
    @item=Item.new
  end
  
  def create
    @item=Item.new(item_params)
    @item.save
    redirect_to user_item_path(@item)
  end

  def index
    @items=Item.all
    @items=Item.all.page(params[:page]).per(20)
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
    redirect_to user_item_path(@item)
  end
  
  private
  
  def item_params
    params.require(:item).permit(:genre_id, :user_id, :name, :description, :price, :sale_method, :sale_status, :image)
  end
end
