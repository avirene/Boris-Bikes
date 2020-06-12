class DockingStation
attr_reader :bike

  def initialize
  @dock = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end
  
  def dock(bike)
    @bike = bike
    fail "Station is full" if @dock.length >= 20
    @dock << @bike
    @bike
  end
  
end
