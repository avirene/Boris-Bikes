require './lib/docking_station'
describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  
  it 'is an instance of Bike class' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end
 
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # it { is_expected.to respond_to(:dock).with(1).argument }
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
  # it { is_expected.to respond_to(:bike) }
  
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end
  
end