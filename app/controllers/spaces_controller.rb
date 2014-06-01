class SpacesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @space = Space.new
  end

  def create
    @space = current_user.spaces.create(space_params)

    if @space.valid?
      redirect_to action: 'thankyou'
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    Space.destroy(params[:id])
    redirect_to "/account"
  end

  def thankyou
  end

  private
  def space_params
    params.require(:space).permit(:name, :address1, :address2, :city, :state, :zip, :description, :capacity_id)
  end

end
