=begin
8:49
9:10
### Problem
# Input: specific string, and an array of words
# Output: array (of strings)

## Rules
# Explicit:
  - Returned words in array must have same characters as given word
  - Cannot be given word
  - Case insensitive

### Data Structure
# Hash which has each character and the frequency for each character as the value

## Methods
# #count
# #each_with_object({}) 
  - to set up hash
# #select
# #downcase
=end

class Anagram
  attr_reader :given_word, :char_hash

  def initialize(given_word)
    @given_word = given_word.downcase
    @char_hash = setup_hash(given_word)
  end

  def match(list_of_words)
    list_of_words.select do |word|
      word = word.downcase
      setup_hash(word).eql?(char_hash) && given_word != word
    end
  end

  def setup_hash(word)
    word.chars.each_with_object({}) do |char, hsh|
      hsh[char] = word.count(char)
    end
  end
end