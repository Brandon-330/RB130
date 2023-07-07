=begin
5:35

### Problem
# Input: String (a letter)
# Output: Diamond print

## Rules
# Explicit:
  - Given a letter, start the letter with 'A' and go down to the middle
  - From the middle, go back up to letter 'A'
  - The diamond is horizontally and vertically symmetric

# Implicit:
  - No integers, floats, or collections as input

### Data Structure
# Formulate an alhabet array, which includes alphabets up to and including given letter
  - Add everything except last letter to this array
# The alphabet array will be the diamond from top to bottom
# Line number will be considered the alphabet array's index
# First and last line are different and happens once
# Depending on the line number, space will be different

## Methods
#each
#size
#each_with_object
#puts
=end

class Diamond
  def self.make_diamond(given_letter)
    alphabet_array = ('A'..given_letter).each_with_object([]) do |char, array|
      array << char
    end
    ('A'...given_letter).reverse_each { |char| alphabet_array << char } unless given_letter == 'A'

    print_diamond(alphabet_array)
  end

  def self.print_diamond(alphabet_array)
    middle_line = (alphabet_array.size + 1) / 2
    outer_space = middle_line - 1
    return_diamond = ''

    alphabet_array.each_with_index do |letter, idx|
      inner_space = alphabet_array.size - 2 - (outer_space * 2)

      return_diamond += "#{' ' * outer_space}#{letter}"
      return_diamond += "#{' ' * inner_space}#{letter}" unless letter == 'A'
      return_diamond += "#{' ' * outer_space}\n"
      if idx + 1 < middle_line
        outer_space -= 1
      else
        outer_space += 1
      end
    end

    return_diamond
  end
end