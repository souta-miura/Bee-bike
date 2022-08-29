class Admin::MakersController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @makers=Maker.page(params[:page]).per(8)
    @maker=Maker.new
  end
  
  def create
    @maker=Maker.new(maker_params)
    @maker.save
    redirect_to admin_makers_path
  end

  def edit
    @maker=Maker.find(params[:id])
  end
  
  def update
    @maker=Maker.find(params[:id])
    @maker.update(maker_params)
    redirect_to admin_makers_path
  end
  
  def destroy
    @maker=Maker.find(params[:id])
    @maker.destroy
    redirect_to admin_makers_path
  end
  
  private
  
  def maker_params
    params.require(:maker).permit(:name, :valid_invalid_status)
  end
end
