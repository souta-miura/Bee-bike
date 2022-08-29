class Admin::CcClassesController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @cc_classes=CcClass.page(params[:page]).per(8)
    @cc_class=CcClass.new
  end
  
  def create
    @cc_class=CcClass.new(cc_class_params)
    @cc_class.save
    redirect_to admin_cc_classes_path
  end

  def edit
    @cc_class=CcClass.find(params[:id])
  end
  
  def update
    @cc_class=CcClass.find(params[:id])
    @cc_class.update(cc_class_params)
    redirect_to admin_cc_classes_path
  end
  
  def destroy
    @cc_class=CcClass.find(params[:id])
    @cc_class.destroy
    redirect_to admin_cc_classes_path
  end
  
  private
  
  def cc_class_params
    params.require(:cc_class).permit(:name, :valid_invalid_status)
  end
end
