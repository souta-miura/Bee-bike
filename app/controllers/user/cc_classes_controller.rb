class User::CcClassesController < ApplicationController
  def show
    @cc_classes=CcClass.all
    @cc_class=CcClass.find(params[:id])
  end
end
