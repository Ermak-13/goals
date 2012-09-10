require 'spec_helper'

describe Interest do
	before :each do 
		@interest = FactoryGirl.build(:valid_interest)
	end

	it 'should be valid' do
		@interest.should be_valid
	end

	it 'should be invalid' do
		@interest.name = nil
		@interest.should_not be_valid
	end
end
