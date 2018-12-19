class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restr_params)
    if @restaurant.valid?
      @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def index
  end

  def edit
  end

  def show
    @restr = Restaurant.find(params[:id])
  end

  private

  def restr_params
    params.require(:restaurant).permit(:name, :address, :owner_id)
  end

end
