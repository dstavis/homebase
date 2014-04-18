require 'spec_helper'

describe Searchprofile do
	it { should have_one(:group) }
end