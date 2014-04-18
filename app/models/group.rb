class Group < ActiveRecord::Base
  has_many :users
  has_one :searchprofile
end
