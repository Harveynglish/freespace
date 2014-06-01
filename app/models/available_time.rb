class AvailableTime < ActiveRecord::Base
  validates_presence_of :space_id, :day_id, :start_time, :end_time

  belongs_to  :space
  belongs_to  :day

  def formatted_start
    hours = start_time / 100
    if hours > 12
      hours -= 12
      meridian = "p.m."
    else
      meridian = "a.m."
    end

    minutes = start_time % 100
    if minutes < 10
      minutes = minutes == 0 ? "00" : "0" + minutes.to_s
    else
      minutes = minutes.to_s
    end

    "#{hours}:#{minutes} #{meridian}"
  end

  def formatted_end
    hours = end_time / 100
    if hours > 12
      hours -= 12
      meridian = "p.m."
    else
      meridian = "a.m."
    end
    
    minutes = end_time % 100
    if minutes < 10
      minutes = minutes == 0 ? "00" : "0" + minutes.to_s
    else
      minutes = minutes.to_s
    end
    
    "#{hours}:#{minutes} #{meridian}"
  end
end