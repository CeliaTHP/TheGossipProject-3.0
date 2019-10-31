class CitiesController < ApplicationController

  def index

  end


  def show

    @city = City.find(params[:id])
    @gossip = Gossip.all
    @user = User.all

  end



end
