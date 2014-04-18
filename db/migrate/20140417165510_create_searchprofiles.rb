class CreateSearchprofiles < ActiveRecord::Migration
  def change
  	create_table :searchprofiles do |t|
  		t.belongs_to :group
  		t.integer :num_bedrooms
  		t.integer :num_bathrooms
  		t.integer :max_price
  		t.string :neighborhood
  	end
  end
end
