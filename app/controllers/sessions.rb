get "/session/login" do
  erb :login
end

post "/session/login" do
  user = User.find_by_username(params[:username])
  puts "$"*50
  p user

  if user.password == BCrypt::Engine.hash_secret(params[:password], user.password_salt)

    session[:user_id] = user.id
    puts "*"*50
    p session[:user_id]

    redirect "/user/#{session[:user_id]}"
  else
    "<h1>you rock</h1>" #BUGBUG
  end
end

delete "/sessions/:id" do
  session[:user_id] = nil
  redirect "/session/login"
end

post "/session/sign-up" do
  salt = BCrypt::Engine.generate_salt
  user = User.create(
    username: params[:username],
    email: params[:email],
    password: BCrypt::Engine.hash_secret(params[:password], salt),
    password_salt: salt
    )

  session[:user_id] = user.id
  puts "$"*50
  p session[:user_id]
  
  redirect "/user/#{session[:user_id]}"
end

get '/user/:user_id' do
  @user = User.find(params[:user_id])
  puts "YOU MADE IT"
  erb :user_page
end