require 'spec_helper'

describe User do

	before(:each) do
		@test_user = User.create(username: 'testing_user', password: 'password', email: 'test@test.com')
	end

	it "has a username" do
		@test_user.username.should_not == nil
	end

	it "has a password" do
		@test_user.password.should_not == nil
	end

	it "has an email" do
		@test_user.email.should_not == nil
	end
	
end