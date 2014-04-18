class ChangeUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :facebook_id, :picture_url
  	end
  end
end
