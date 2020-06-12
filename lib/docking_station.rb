class DockingStation
attr_reader :bike

  def initialize
  @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end
  
  def dock(bike)
    @bike = bike
    fail "Station is full" if @bikes.count >= 20
    @bikes << bike
    # bike
  end
  
end
