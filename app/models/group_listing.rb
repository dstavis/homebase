class GroupListing < ActiveRecord::Base
  belongs_to :listing
  belongs_to :group
end
