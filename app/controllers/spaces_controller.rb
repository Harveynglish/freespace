class SpacesController < ApplicationController

  def new
    @space = Space.new
  end

  def create
    @space = Space.create(space_params)
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
    params.require(:space).permit(:name, :description, :capactity, :comments)
  end

end
