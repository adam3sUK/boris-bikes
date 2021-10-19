require './lib/boris_bikes'

describe DockingStation do
    it 'an object that describes a docking station' do
        expect(DockingStation)
    end
    it { is_expected.to respond_to(:release_bike) }
    it { is_expected.to respond_to(:dock_bike).with(1).argument }
    it 'passes docked bike to bikes array' do
        @docking_station = DockingStation.new
        @bike = Bike.new
        @docking_station.dock_bike(@bike)
        expect(@docking_station.bikes).to include(@bike)
    end
    it 'returns Bike when passsed release_bike method' do
        @docking_station = DockingStation.new
        result = @docking_station.send(:release_bike)
        expect(result).to be_an_instance_of(Bike)
    end
end

describe Bike do
    it 'an object that describes a bike' do
        expect(Bike)
    end
    it { is_expected.to respond_to(:working?)}
end