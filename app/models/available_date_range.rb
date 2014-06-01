class AvailableDateRange < ActiveRecord::Base
  validates_presence_of :space_id, :start_date, :end_date

  belongs_to :space

  def formatted_start
    start_date.strftime("%b %-d, %Y")
  end

  def formatted_end
    end_date ? end_date.strftime("%b %-d, %Y") : "[no end date]"
  end
end