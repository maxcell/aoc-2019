require_relative './spec_helper'
require_relative '../day-1/solution.rb'

RSpec.describe 'Tests' do
    context "Part 1" do
        it 'calculates fuel for a mass of 12' do
            mass = 12
            expected_fuel = 2
            expect(fuel_calculation(mass)).to eq(expected_fuel)
        end

        it 'calculates fuel for a mass of 14' do
            mass = 14
            expected_fuel = 2
            expect(fuel_calculation(mass)).to eq(expected_fuel)
        end

        it 'calculates fuel for a mass of 1969' do
            mass = 1969
            expected_fuel = 654
            expect(fuel_calculation(mass)).to eq(expected_fuel)
        end

        it 'calculates fuel for a mass of 100756' do
            mass = 100756
            expected_fuel = 33583
            expect(fuel_calculation(mass)).to eq(expected_fuel)
        end
    end

    context "Part 2" do 
        it 'calculates fuel for a mass of 14' do
            mass = 14
            expected_fuel = 2
            expect(add_fuel_calc(mass)).to eq(expected_fuel)
        end

        it 'calculates fuel for a mass of 1969' do
            mass = 1969
            expected_fuel = 966
            expect(add_fuel_calc(mass)).to eq(expected_fuel)
        end

        it 'calculates fuel for a mass of 100756' do
            mass = 100756
            expected_fuel = 50346
            expect(add_fuel_calc(mass)).to eq(expected_fuel)
        end
    end
end