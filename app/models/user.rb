class User < ActiveRecord::Base

	belongs_to :group
	
  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
end
