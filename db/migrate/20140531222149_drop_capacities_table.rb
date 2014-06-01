class DropCapacitiesTable < ActiveRecord::Migration
  def change
    drop_table :capacities
  end
end
