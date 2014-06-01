class ActivitiesController < ApplicationController

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)

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
  def activity_params
    params.require(:activity).permit(:name, :description, :capacity_id)
  end

end
