require 'spec_helper'

describe Searchprofile do
	it { should belong_to (:group) }
end