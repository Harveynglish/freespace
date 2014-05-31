class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.belongs_to  :user
      t.string      :name
      t.string      :address1
      t.string      :address2
      t.string      :city
      t.string      :state
      t.string      :zip
      t.text        :description
      t.references  :capacity
      t.belongs_to  :user
      t.text        :comments
      t.float       :latitude
      t.float       :longitude

      t.timestamps
    end
  end
end
