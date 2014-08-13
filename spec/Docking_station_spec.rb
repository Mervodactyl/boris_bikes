require './lib/docking_station'
require './lib/bike'

describe DockingStation do
it_should_behave_like "a bike container"
	let(:station) { DockingStation.new(:capacity =>123) }
  let(:bike) { Bike.new }

	it "should allow setting default capacity on inititalising" do
    p station.capacity
		expect(station.capacity).to eq(123)
	end
end










