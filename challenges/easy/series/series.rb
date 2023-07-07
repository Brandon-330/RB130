=begin
9:49
10:01
### Problem
# Input: String
# Output: Array

## Rules
# Explicit:
  - Return all possible consecutive series of a string
    - Given length
  - Throw an error if given length greater than string length

# Implicit:
  - No letters to worry about

### Data Structure
# Arrays
# Keep slicing the string with an index

## Methods
#chars
#each_with_object([])
#map(&:to_i)
#size
=end

class Series
  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def slices(specified_length)
    raise ArgumentError unless valid?(specified_length)
  
    index = 0
    all_series = []
    while index + specified_length <= number_string.length
      all_series << transform_str_arr_to_i(number_string[index, specified_length])

      index += 1
    end

    all_series
  end

  private

  def valid?(specified_length)
    specified_length <= number_string.length
  end

  def transform_str_arr_to_i(str_arr)
    str_arr.chars.map(&:to_i)
  end
end