require 'factory_girl'

FactoryGirl.define do
	factory :valid_interest, class: Interest do
		name 'test interest'
	end
end