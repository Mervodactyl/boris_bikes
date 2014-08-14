require './lib/van.rb'

describe Van do

	let(:van) { Van.new }
	let(:broken_bike) { double :broken_bike, {:broken? => true}}
	let(:working_bike) { double :working_bike, {:broken? => false }}
	let(:docking_station) { double :docking_station, {:bikes => [broken_bike, working_bike] }}

	it_should_behave_like "a bike container"

  it "should only accept broken bikes from a dockingStation" do
  	expect(docking_station).to receive(:release).with(broken_bike)
  	van.collect_from(docking_station)
  	expect(van.bikes).to eq [broken_bike]
  end

end
