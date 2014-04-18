require 'spec_helper'

describe GroupListing do
	it { should belong_to (:listing) }
	it { should belong_to (:group) }
end