require 'bike'

# we're describing the funcunality of a specific class, Bike
describe Bike do 
	# this a specific feature (behaiviour)
	# that we expect to be present
	it "should not be broken after we create it" do
		the_bike = Bike.new # intialise a new object of Bike class
		# expect an instance of this class to have
		# a method "broken? that should be false
		bike.break!
		expect(the_bike).topry be_broken
	end
end