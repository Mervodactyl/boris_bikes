require './lib/bike'

# we're describing the funcunality of a specific class, Bike
describe Bike do 
	# this a specific feature (behaiviour)
	# that we expect to be present
	it "should not be broken after we create it" do
		bike = Bike.new # intialise a new object of Bike class
		# expect an instance of this class to have
		# a method "broken? that should be false
		expect(bike).not_to be_broken
	end

	it "should be able to get fixed" do
		bike = Bike.new
		bike.break! 
		bike.fix!
		expect(bike).not_to be_broken
	end
end