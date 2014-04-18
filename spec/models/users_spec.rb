require 'spec_helper'

describe User do
	it { should belong_to (:group) }

	before(:each) do
		@test_user = User.create(username: 'testing_user', password: 'password', email: 'test@test.com')
	end


	
end