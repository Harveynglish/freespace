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
    @user = User.find(params[:id])
    @user.update!(user_params)
    # if current_user.is_admin?
      redirect_to admin_users_path
    # else
    #   redirect_to current_user
    # end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :is_admin)
  end
end
