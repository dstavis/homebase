get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/pages/sample' do

	erb :sample
end

