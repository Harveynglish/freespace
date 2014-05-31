class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.belongs_to  :space
      t.belongs_to  :day
      t.time        :start_time
      t.time        :end_time

      t.timestamps
    end
  end
end
