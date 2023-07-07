=begin
9:32
9:40
### Problem
# Input: Integer
# Output: String

## Rules
# Explicit:
  - If the divisors of a number are less than, equal to, or greater than, return deficient, perfect, abundant respectively
  - Raise StandardError if given number < 0

# Implicit:
  - Working only with numbers
  - No floats present

### Data Structure
# Determine the divisors and append to a new array
# Sum array and see if it matches
=end

class PerfectNumber
  def self.classify(number)
    raise StandardError if number <= 0

    counter = 0
    (1...number).each do |iterating_num|
      counter += iterating_num if number % iterating_num == 0
    end

    return 'perfect' if counter == number
    counter > number ? 'abundant' : 'deficient'
  end
end