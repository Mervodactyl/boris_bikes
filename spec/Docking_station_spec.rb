require './lib/docking_station'
require './lib/bike'

describe DockingStation do

	let(:station) { DockingStation.new(:capacity =>123) }
  let(:bike) { Bike.new }

	it "should allow setting default capacity on inititalising" do
		expect(station.capacity).to eq(123)
	end

  it 'starts with 0 bikes' do
    expect(station.bike_count).to eq(0)
  end

  it 'can dock bikes' do
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

  it 'can dock bikes' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq(0)
  end
end










