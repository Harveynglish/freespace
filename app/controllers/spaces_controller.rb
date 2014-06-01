class SpacesController < ApplicationController

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(space_params)

    redirect_to "/"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def space_params
    params.require(:space).permit(:name, :address1, :address2, :city, :state, :zip, :description, :capactity)
  end

end
