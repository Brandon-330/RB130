=begin
9:11
9:28
### Problem
# Input: String
# Output: Integer

## Rules
# Explicit:
  - For each character, receive a score
  - Each character can be counted multiple times
  - Case insensitive

# Implicit:
  - Anything other than a string, returns 0
  - class method

### Data Structure
# Create the hash to determine letter value
# Iterate through the word

## Methods
#each
#chars
=end

class Scrabble
  attr_reader :word

  LETTER_VALUES = {
    ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'] => 1,
    ['D', 'G'] => 2,
    ['B', 'C', 'M', 'P'] => 3,
    ['F', 'H', 'V', 'W', 'Y'] => 4,
    ['K'] => 5,
    ['J', 'X'] => 8,
    ['Q', 'Z'] => 10
  }

  def initialize(word)
    @word = word
  end

  def self.score(convenient_word)
    Scrabble.new(convenient_word).score
  end

  def score
    return 0 unless word. =~ /[a-zA-Z]/

    counter = 0
    word.upcase.chars.each do |char|
      counter += return_letter_value(char)
    end

    counter
  end

  private

  def return_letter_value(char)
    LETTER_VALUES.each do |arr, v|
      return v if arr.include?(char)
    end
  end
end