require './lib/bike_container'


shared_examples 'a bike container' do
	let(:bike) { Bike.new }
	let(:holder) { described_class.new }

	def fill_holder(holder)
		holder.capacity.times { holder.dock(bike) }
	end

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it 'starts with 0 bikes' do
		expect(holder.bike_count).to eq(0)
	end

	it 'can dock bikes' do
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it 'can undock bikes' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it 'should not accept a bike if the holder is full' do
		fill_holder holder
		expect { holder.dock(bike) }.to raise_error(RuntimeError)
	end

	it 'should reject release request if a bike is not there' do
		expect(holder.release(bike)).to eq raise_error(RuntimeError, "no bikes available")
	end


end