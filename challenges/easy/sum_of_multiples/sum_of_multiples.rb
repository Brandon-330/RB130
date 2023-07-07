=begin
9:31
9:40

### Problem
# Input: Integer
# Output: Integer

## Rules
# Explicit:
  - Return sum of divisors
    - Either given or defaulted to 3 and 5
      - Inputted as argument during instantiation

# Implicit:
  - Class method is default
  - No strings, floats, arrays as inputs

### Data Structure
# Form an array of numbers that are divided by either divisors
# Sum array up

## Methods
#inject(0) or #sum
#each
#any?
=end

class SumOfMultiples
  attr_reader :divisors

  def initialize(*divisors)
    @divisors = divisors
  end

  def self.to(num)
    SumOfMultiples.new(3, 5).to(num)
  end

  def to(num)
    (2...num).each_with_object([]) do |iterating_num, arr|
      arr << iterating_num if (divisors.any? { |div| iterating_num % div == 0 })
    end.sum
  end 
end
