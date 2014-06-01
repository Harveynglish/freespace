class ActivitiesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activity_params)

    if @activity.valid?
      redirect_to action: 'thankyou'
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if current_user.is_admin?
      redirect_to admin_activities_path
    else
      redirect_to current_user
    end
  end

  def destroy
  end

  def thankyou
  end

  private
  def activity_params
    params.require(:activity).permit(:name, :description, :capacity, :when)
  end

end
