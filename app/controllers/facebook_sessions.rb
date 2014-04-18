post '/session/facebook_login/' do
	User.connection
	if user = User.find_by_facebook_id(params['facebook_id'])
	else
		user = User.create(email: params['email'], facebook_id: params['facebook_id'], picture_url: params['picture_url'])
	end
	
	session[:user_id] = user.id

	return "/user/#{user.id}"
end