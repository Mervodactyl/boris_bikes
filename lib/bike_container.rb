module BikeContainer



	def bikes
		@bikes ||= []
	end

	def bike_count
		bikes.length
	end

	def dock(bike)
		if full?
			raise
		else
			bikes << bike
		end
	end

	def release(bike)
		if empty?
			raise 'no bikes available'
		else
			bikes.delete(bike)
		end
	end

	def capacity
		@capacity ||= 10
	end

	def capacity=(number)
		@capacity = number
	end

	def full?
		bikes.length == capacity
	end

	def empty?
		bikes.empty?
	end

	def available_bikes
		bikes.select { |bike| !bike.broken? }
	end

end

