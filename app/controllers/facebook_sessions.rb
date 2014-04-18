# post '/session/facebook_login/' do
# 	if user = User.find_or_create_by_facebook_id(params[:facebook_id]) do |user|
# 			user.email => params[:email],
# 			user.facebook_id => params[:facebook_id],
# 			user. picture_url => params[:picture_url]
# 		end )
# 		p '-'*50
# 		p user
# 		p '-'*50
# 	else

# 	end
	
# 	p '-'*50
# 	p user
# 	p '-'*50
	
# 	session[:user_id] = user.id

# 	p '-'*50
# 	p "Session user id: #{session[:user_id]}"
# 	p '-'*50
# 	return "/user/#{user.id}"
# end