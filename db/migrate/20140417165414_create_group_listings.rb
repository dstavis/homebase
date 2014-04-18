class CreateGroupListings < ActiveRecord::Migration
  def change
  	create_table :group_listings do |t|
  		t.belongs_to :group
  		t.belongs_to :listing
  		t.string :listing_status

  		t.timestamps
  	end
  end
end
