class CreateListings < ActiveRecord::Migration
  def change
  	create_table :listings do |t|
  		# needs to belong to a group
	  	t.integer :price
	  	t.integer :num_bedrooms
	  	t.integer :num_bathrooms
	  	t.string :neighborhood
	  	t.string :source_url
	  	t.string :picture_url
	  end
  end
end
