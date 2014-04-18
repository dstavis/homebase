get '/' do
  session.clear
  erb :login
end


