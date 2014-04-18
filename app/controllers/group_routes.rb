#### GROUPS #####

# Shows all groups:
get '/groups' do      #GET RID OF THIS IN FINAL
  erb :all_groups
end

# Sends user to a form to create a group
get '/groups/new' do
	if session[:user_id]
		erb :create_group
	else
		redirect '/'
	end
end

# Creates a new group
post '/groups' do
	if session[:user_id]
		@group = Group.create(name: params[:name])
		@user = User.find(session[:user_id])
		@user.update_attribute(:group_id, @group.id)

		new_search_profile = Searchprofile.create(
			group_id: @group.id,
			num_bedrooms: params[:bedrooms],
			num_bathrooms: params[:bathrooms],
			max_price: params[:max_price],
			neighborhood: params[:neighborhood]
		)

	else
		redirect '/'
	end

	redirect "/user/#{session[:user_id]}"

end

# Shows a specific group:
get '/groups/:group_id' do
  @group = Group.find(params[:group_id])
  @searchprofile = Searchprofile.find(@group.searchprofile.id)
  @people_in_group = User.where(group_id: @group.id)

  if session[:user_id]
  	@user = User.find(session[:user_id])
  end

  erb :group_page2
end

post '/groups/:group_id/join' do
	@user = User.find(session[:user_id])
	@user.update_attribute(:group_id, params[:group_id]) 

	redirect "/user/#{session[:user_id]}"
end
# Returns a form to edit a group
get '/photos/:id/edit' do

end