post '/session/facebook_login/' do
	User.connection
	if user = User.find_by_facebook_id(params['facebook_id'])
	else
		user = User.create(email: params['email'], facebook_id: params['facebook_id'], picture_url: params['picture_url'])
	end

	if session[:join_group]
		user.group_id = session[:join_group]
		user.save
		session[:join_group] = nil
	end
	
	session[:user_id] = user.id

	return "/user/#{user.id}"
end

get '/join/group/:id' do
	session[:join_group] = params[:id]
	redirect '/session/login'
end
