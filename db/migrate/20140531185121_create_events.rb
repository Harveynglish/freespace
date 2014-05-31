class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to  :space
      t.belongs_to  :activity
      t.date        :date
      t.time        :start_time
      t.time        :end_time

      t.timestamps
    end
  end
end
