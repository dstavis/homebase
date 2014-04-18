require 'spec_helper'

describe Group do
	it { should have_one(:searchprofile) }
	it { should have_many (:users) }
end