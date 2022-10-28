class User::UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update]
  
  def index
    @users=User.all
  end

  def show
    @user=User.find(params[:id])
    @items=@user.items
    favorites=Favorite.where(user_id: @user.id).pluck(:item_id)
    @favorite_items=Item.find(favorites)
  end

  def edit
    @user=User.find(params[:id])
  end
  
  def update
    @user.update(user_params)
    redirect_to user_user_path(@user.id)
  end 

  def quit
  end
  
  def favorites
    @user=User.find(params[:id])
    favorites=Favorite.where(user_id: @user.id).pluck(:item_id)
    @favorite_items=Item.find(favorites)
  end
  
  def remove
    current_user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email, :is_deleted)
  end
  
  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_user_path(current_user)
    end
  end
end
