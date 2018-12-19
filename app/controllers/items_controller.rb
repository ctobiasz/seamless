class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to restaurant_path(@item.restaurant_id)
    else
      render 'new'
  end
end

  def edit
  end

  def show
    @item = Item.find(params[:id])
  end

  def index
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :restaurant_id)
end
end
