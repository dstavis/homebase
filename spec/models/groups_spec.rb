require 'spec_helper'

describe Group do
	it { should belong_to(:searchprofile) }
	it { should have_many (:users) }
end