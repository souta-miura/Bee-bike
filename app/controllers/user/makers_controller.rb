class User::MakersController < ApplicationController
  def show
    @makers=Maker.all
    @maker=Maker.find(params[:id])
  end
end
