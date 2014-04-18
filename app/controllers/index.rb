get '/' do
  # session.clear
  erb :login
end

post '/logout' do
	session.clear
	erb :login
end

post '/listings/url' do
	class Page
		attr_reader :data
			def initialize(url)
				good_url = URI(url)
				raw_data = Net::HTTP.get(good_url)
				@data = Nokogiri::HTML(raw_data)
			end
	end

	p = Page.new(params[:cl_url])
	p p

	# listing_title = p.data.css('body').children[2].css('h2').map {|m| m.text}.last

	return_hash = Hash.new("sorry, no info available")  # set default to "Sorry, no info available"
	return_hash[:source_url] = params[:source_url]
	# return_hash[:price] = listing_title.split(' ').first.strip[1..-1].to_i
	# return_hash[:neighborhood] = "(#{listing_title.split('(')[1].chomp}"
	return_hash[:num_bedrooms] = p.data.css('p b').first.text.to_i
	if p.data.css('p b')[1]
		return_hash[:num_bathrooms] = p.data.css('p b')[1].text.to_i
	else
		return_hash[:num_bathrooms] = "0"
	end
	return_hash[:picture_url] = p.data.css('img').map {|i| i["src"]}.first
	# if p.data.css('p a').first["href"].start_with?("https://maps.google.com")
	# 	return_hash[:google_maps] = p.data.css('p a').first["href"]
	# end
	# if p.data.css('div .mapaddress').first
	# 	return_hash[:address] = p.data.css('div .mapaddress').first.text
	# end
	# return_hash[:listing_date] = p.data.css('time').last.text
	# return_hash[:listing_details] = p.data.css('section #postingbody').text
	# return_hash


	Listing.create(return_hash)
	puts "$" * 1000
	puts "LISTING CREATED"
	redirect "/user/#{session[:user_id]}"
end