require './lib/docking_station'
require './lib/garage'

describe Garage do

it_should_behave_like "a bike container"
  let(:garage) { Garage.new }
  let(:bike) { double :bike, {:broken? => false} }
  let(:broken_bike) { double :bike, {:broken? => true} }

  it "will not accept a working bike" do
    expect{ garage.dock(bike) }.to raise_error
  end


end