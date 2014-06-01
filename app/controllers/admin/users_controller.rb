class Admin::UsersController < Admin::BaseController
  def index
    @users = User.order(:id).paginate(:page => params[:page], :per_page => 30)
  end

  def new
    @user = User.new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    render "users/show"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
