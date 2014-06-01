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
      t.integer     :capacity
      t.text        :comments
      t.float       :latitude
      t.float       :longitude
      t.boolean     :available_all_hours
      t.boolean     :alternate_contact
      t.string      :contact_name
      t.string      :contact_organization
      t.string      :contact_phone
      t.string      :contact_email
      t.text        :admin_notes

      t.timestamps
    end
  end
end
