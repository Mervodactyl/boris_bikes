module BikeContainer

	def bikes
		@bikes ||= []
	end

	def bike_count
		bikes.length
	end

	def dock(bike)
		bikes << bike
	end

	def release(bike)
		bikes.delete(bike)
	end

	def capacity
		123
	end

	def capacity=(number)
		123
	end
end

