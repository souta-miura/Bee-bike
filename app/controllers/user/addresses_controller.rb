class User::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = Address.all
  end
  
  def create
    @address = Address.new(address_params)
    @address.user_id = current_user.id
    @address.save
  end

  def edit
    @address = Address.find(params[:id])
    if @address.user_id == current_user.id
      render "edit"
    else
      redirect_to address_path
    end
  end
  
  def update
    @address=Address.find(params[:id])
    @address.update(address_params)
    redirect_to user_addresses_path
  end
  
  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to address_path
  end
  
  private
  
  def address_params
    params.require(:address).permit(:user_id, :postal_code, :address, :name)
  end
end
