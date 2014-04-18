class CreateGroups < ActiveRecord::Migration
  def change
  	create_table :groups do |t|
  		t.belongs_to :searchprofile
  		t.string :name

  		t.timestamps
  	end
  end
end
