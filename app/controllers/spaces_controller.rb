class SpacesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_permitted, :except => [:new, :thankyou, :create]

  def is_permitted
    unless current_user.id == Space.find(params[:id]).user_id || current_user.is_admin?
      redirect_to "/account" 
    end
  end

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
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    if current_user.is_admin?
      redirect_to admin_spaces_path
    else
      redirect_to "/account"
    end
  end

  def destroy
    if current_user.spaces.find(params[:id]) || current_user.is_admin?
      Space.destroy(params[:id])
    end
    redirect_to "/account"
  end

  def thankyou
  end

  private
  def space_params
    params.require(:space).permit(:name, :address1, :address2, :city, :state, :zip, :description, :capacity_id)
  end

end
