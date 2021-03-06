class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :email, :null => false, :unique => true
      t.string :fave_travel_quote, :null => false
      t.string :password_digest, :null => false

      t.timestamps
    end
  end
end
