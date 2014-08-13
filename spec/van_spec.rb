require './lib/van.rb'

describe 'a van' do
  it 'should hhave no bikes to begin with' do
    expect(Van.new.bike_count).to eq(0)
  end
end
