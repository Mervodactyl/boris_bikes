require './lib/docking_station'
require './lib/bike'

describe DockingStation do
it_should_behave_like "a bike container"
	let(:station) { DockingStation.new(:capacity =>123) }
  let(:bike) { double :bike, {:broken? => false} }
  let(:broken_bike) { double :bike, {:broken? => true } }

	it "should allow setting default capacity on inititalising" do
    p station.capacity
		expect(station.capacity).to eq(123)
	end

  it "should have a list of available bikes" do
    station.dock(bike)
    station.dock(broken_bike)
    expect(station.available_bikes).to eq [bike]
  end


end










