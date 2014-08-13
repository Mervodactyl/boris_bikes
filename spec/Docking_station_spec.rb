require './lib/docking_station'
require './lib/bike'

describe DockingStation do

	let(:station) { DockingStation.new(:capacity =>123) }
  let(:bike) { Bike.new }

	it "should allow setting default capacity on inititalising" do
		expect(station.capacity).to eq(123)
	end
end










