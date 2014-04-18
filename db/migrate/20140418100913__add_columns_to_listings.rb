class AddColumnsToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :google_maps, :string
  	add_column :listings, :address, :string
  	add_column :listings, :listing_date, :string
  	add_column :listings, :listing_details, :text
  end
end
