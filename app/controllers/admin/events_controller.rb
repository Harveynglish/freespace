class Admin::EventsController < Admin::BaseController
  def index
    if @only_unplaced = params[:only_unplaced] == "true"
      @events = Event.includes([{activity: :user}]).unplaced
    elsif @only_placed = params[:only_placed] == "true"
      @events = Event.includes([{activity: :user}, {space: :user}]).placed
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.includes(activity: :user).find(params[:id])
    @activity = @event.activity
    @event_contact_name = @activity.alternate_contact? ? @activity.contact_name : @activity.user.name
    @event_contact_email = @activity.alternate_contact? ? @activity.contact_email : @activity.user.email
  end

  def edit
    @event = Event.includes(activity: :user).find(params[:id])
    @activity = @event.activity

    if @needs_space = !@event.space_id.present?
      @available_spaces = Space.available_for(@event)
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    redirect_to admin_event_path(@event)
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:start_time, :end_time, :space_id)
  end
end
