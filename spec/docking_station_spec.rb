require './lib/docking_station'
describe DockingStation do
  let(:bike) { Bike.new } # bike = Bike.new
  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  # it { is_expected.to respond_to :release_bike }
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # subject == DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
 
  it 'releases working bikes' do
    bike.working?
    expect(bike).to be_working
  end

  # it { is_expected.to respond_to(:dock).with(1).argument }
  it 'docks something' do
    expect(subject.dock(bike)).to eq bike
  end
  
  # it { is_expected.to respond_to(:bike) }
  
  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  
end