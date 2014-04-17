require 'spec_helper'

describe Listing do

	before(:each) do
		@test_listing = Listing.create(price: 1000, num_bedrooms: 2, num_bathrooms: 1, neighborhood: "Tenderloin", 
								source_url: "http://sfbay.craigslist.org/sfc/apa/4417813451.html",
								picture_url: "http://images.craigslist.org/00O0O_deHOr8GlgD8_600x450.jpg")
	end

	it "has a price" do
		@test_listing.price.should_not == nil
	end

	it "has bedrooms" do
		@test_listing.num_bedrooms.should_not < 1
	end

	it "has bathrooms" do
		@test_listing.num_bathrooms.should_not < 1
	end
	
end