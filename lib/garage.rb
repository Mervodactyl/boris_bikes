require 'bike_container'

class Garage

   include BikeContainer

	def dock(bike)
		raise if bike.broken? == false
		super
	end

end
