class CreateWishlist < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :country_name
      t.string :city_name
      t.string :tentative_dates
      t.references :user, index: true

      t.timestamps
    end
  end
end
