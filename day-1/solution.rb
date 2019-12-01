# To get the calculation of fuel necessary for a given mass
# Calculate by: Math.floor(mass / 3) - 2
def fuel_calculation(mass)
    # Ruby does integer division so always rounds down
    (mass / 3) - 2
end
 
# In order to get the additional fuel necessary, we have to
# memoize the calculations from each fuel calculation till
# it reaches a nonpositive number.
def add_fuel_calc(mass)
    memoized_calcs = []
    curr_mass = mass.to_i

    loop do
        new_fuel = fuel_calculation(curr_mass)
        break if new_fuel <= 0
        memoized_calcs << new_fuel
        curr_mass = new_fuel
    end

    memoized_calcs.sum
end

# Solution to Part 1
def part_1
    sum = 0
    File.foreach('input.txt') do |line|
        sum += fuel_calculation(line.to_i)
    end
    puts sum
end

# Solution to Part 2
def part_2
    sum = 0
    File.foreach('input.txt') do |line|
        sum += add_fuel_calc(line.to_i)
    end
    puts sum
end