class User::UsersController < ApplicationController
  def index
  end

  def show
    @user=User.find(params[:id])
  end

  def edit
    @user=User.find(params[:id])
  end
  
  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end 

  def quit
  end
  
  def remove
  end
  
  private
  
  def user_params
    params.require(:user).permit(:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email, :is_deleted)
  end
end
