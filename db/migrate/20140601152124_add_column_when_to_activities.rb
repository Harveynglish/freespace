class AddColumnWhenToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :when, :string
  end
end
