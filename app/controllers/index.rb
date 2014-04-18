get '/' do

	if session[:user_id]
	  erb :index
	else
		redirect'/sessions/new'
	end

end

get '/sessions/new' do
	#login or create account
	erb :_facebook_login
end

post '/sessions' do

end

#Write the GET route for "join group" links
#Should create a session key containing the id of the group the user has permission to join
#During the create account flow, if this key has a value in the session, the user should automatically be added to the group corresponding with this value

get '/join/group/:id' do
	session[:join_group] = params[:id]
	redirect '/sessions/new'
end