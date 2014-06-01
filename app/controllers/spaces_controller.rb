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
    Space.destroy(params[:id])
    redirect_to "/account"
  end

  def thankyou
  end

  private
  def space_params
    params.require(:space).permit(:name, :address1, :address2, :city, :state, :zip, :description, :capacity, :available_all_hours, :alternate_contact)
  end

end
