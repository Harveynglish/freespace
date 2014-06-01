class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy, :show]

  def show
    @user = current_user
    @spaces = @user.spaces.all
    @activities = @user.activities.all
  end

  def destroy
  end

end
