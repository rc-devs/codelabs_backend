require 'rspec'
require_relative './vehicle'
require_relative './garage'

describe Garage do
  let(:garage) { Garage.new }
  let(:car1) { Car.new("Toyota", "Corolla", "Blue") }
  let(:car2) { Car.new("Honda", "Civic", "Red") }

  before(:each) do # add cars to the garage 
    Garage.add_vehicle(car1)
    Garage.add_vehicle(car2)
  end

  it 'should list all cars' do
    expect(Garage.list_all_vehicles).to eq([car1.info, car2.info])
  end

  it 'should find cars by color' do
    expect(Garage.find_by_color("Red")).to eq([car2.info])
  end

  it 'should remove a car' do
    Garage.remove_car("Toyota", "Corolla")
    expect(Garage.list_all_vehicles).not_to include(car1.info)
  end
end