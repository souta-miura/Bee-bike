class User::ItemsController < ApplicationController
  #before_action :ensure_correct_user, only: [:edit, :update, :destroy]
  
  def new
    @item=Item.new
  end
  
  def create
    @item=Item.new(item_params)
    @item.user_id=current_user.id
    if @item.save
    redirect_to user_item_path(@item)
  else
    @items=Item.all
    render 'index'
  end
  end

  def index
    @items=Item.all
    @genres=Genre.all
    @items=Item.all.page(params[:page]).per(20)
  end

  def show
    @item=Item.find(params[:id])
  end

  def edit
    @item=Item.find(params[:id])
    if @item.user_id=current_user.id
      render :edit
    else
      redirect_to user_items_path
    end
  end
  
  def update
    @item=Item.find(params[:id])
    @item.update(item_params)
    redirect_to user_item_path(@item)
  end
  
  def destroy
    @item=Item.find(params[:id])
    @item.destroy
    redirect_to user_items_path
  end
  
  private
  
  def item_params
    params.require(:item).permit(:genre_id, :user_id, :name, :description, :price, :sale_method, :sale_status, :image)
  end
end
