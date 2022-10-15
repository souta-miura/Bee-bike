class User::HomesController < ApplicationController
  def top
    @item=Item.limit(4).order("created_at DESC")
    @genres=Genre.all
    @genre=Genre.find(params[:id])
    @makers=Maker.all
    @cc_classes=CcClass.all
  end

  def about
  end
end
