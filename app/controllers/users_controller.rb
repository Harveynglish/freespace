class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy, :show]

  def show
    @user = current_user
    @spaces = Space.all
    @activities = Activity.all
  end

end
