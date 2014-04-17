get '/' do
  # Look in app/views/index.erb
  erb :login
end


#Write the GET route for "join group" links
#Should create a session key containing the id of the group the user has permission to join
#During the create account flow, if this key has a value in the session, the user should automatically be added to the group corresponding with this value
