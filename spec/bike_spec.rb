require './lib/bike'


# we're describing the funcunality of a specific class, Bike
describe Bike do
	let(:bike) { Bike.new }
	# let(:station) { double :station }
	# this a specific feature (behaiviour)
	# that we expect to be present
	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike.break!
		expect(bike).to be_broken
    end

	it "should be able to get fixed" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end
end