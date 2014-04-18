class Listing < ActiveRecord::Base
  validates :price, presence: true
  validates :num_bedrooms, presence: true
  validates :num_bathrooms, presence: true
  validates :neighborhood, presence: true
  validates :source_url, presence: true
  validates :picture_url, presence: true
end
