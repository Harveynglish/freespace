class Admin::EventsController < Admin::BaseController
  def index
    if @only_unplaced = params[:only_unplaced] == "true"
      @events = Event.includes(:activity, :user).unplaced
    elsif @only_placed = params[:only_placed] == "true"
      @events = Event.includes(:activity, :user, :space).placed
    else
      @events = Event.all
    end
  end

  def edit
    @event = Event.find(params[:id])
    # if no space_id is assigned
      # show partial that lists available spaces
    # else
      # show standard edit view
  end

  def update
  end

  def destroy
  end
end
