class Garage
  def initialize
    @garage_storage = []
  end

  def add_vehicle(vehicle)
    @garage_storage << vehicle #push or insert to array
  end

  def remove_vehicle
    @garage_storage.delete_if {|vehicle| vehicle.make == make && vehicle.model == modle} #delete from array if make/model conditions match
  end

  def list_all_vehicles
    @garage_storage.map(&:info) #maps over array
  end

  def find_by_color
    @garage_storage.select {|vehicle| vehicle.color == color}.map(&:info) #find via condition and map for display
  end

  def empty_garage
    @garage_storage = []
  end
end