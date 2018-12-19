class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.valid?
      @owner.save
      redirect_to root_path
    else
      p @owner.errors.messages
      render 'new'
    end
  end

  def index
  end

  def edit
  end

  def show
  end

  private

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email, :password)
  end


end
