class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|
      t.belongs_to  :space
      t.belongs_to  :day
      t.integer     :start_time
      t.integer     :end_time

      t.timestamps
    end
  end
end
