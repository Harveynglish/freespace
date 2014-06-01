class Admin::ActivitiesController < Admin::BaseController
  def index
    @activities = Activity.order('created_at DESC').paginate(:page => params[:page], :per_page => 30)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
