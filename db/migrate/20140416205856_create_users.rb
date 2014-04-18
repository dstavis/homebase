class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.belongs_to :group
  		t.string :username
  		t.string :password
  		t.string :password_salt
  		t.string :email

  		t.timestamps
  	end
  end
end
