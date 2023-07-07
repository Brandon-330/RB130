=begin
9:20
9:29
### Problem
# Input: Integer
# Output: Integer

## Rules
# Explicit
  - Base 8 digits gets multiplied by 8^n-1
  - Sum it all up in the end

# Implicit:
  - Only working with integers, no strings

### Data Structure
# Convert input integer into string, and place it in an array
# Transform each character in string to an integer
# Sum it all up

## Methods
#Inject(0)
#map(&:to_i)
#to_s
#chars
=end

class Octal
  attr_reader :number

  def initialize(number)
    @number = number
  end
  
  def to_decimal
    number_str_array = number.to_s.chars

    return 0 if number_str_array.any? { |char| char =~ /[a-zA-Z]/ } || ['8', '9'].include?(number_str_array[-1])

    counter = number_str_array.size
    number_str_array.map(&:to_i).inject(0) do |sum, num| 
      counter -= 1
      sum + num*(8**counter)
    end
  end
end