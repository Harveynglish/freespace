class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

  def show
    @space = Space.all
    @activities = Activity.all
  end

end
