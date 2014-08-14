require 'bike_container'

class Van

	include BikeContainer

	def collect_from(station)
		station.bikes.each do |bike|
		if bike.broken?
			self.dock(bike)
			station.release(bike)
		end
	end
end
end