class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.string :trip_date
      t.text :description
      t.string :fave_memory
      t.string :photo
      t.string :country_name
      t.string :city_name
      t.references :user, index: true


      t.timestamps
    end
  end
end
