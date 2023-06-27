class Anagram
  def initialize(word)
    @word = word.downcase
    @word_hash = hash_it(@word)
  end

  def match(list_of_words)
    list_of_words.select do |iterating_word|
      iterating_word = iterating_word.downcase
      anagram?(iterating_word) && (iterating_word != @word)
    end
  end

  def anagram?(given_word)
    hash_it(given_word).eql?(@word_hash)
  end

  def hash_it(given_word)
    given_word.chars.each_with_object({}) do |char, hsh|
      hsh[char] = given_word.count(char)
    end
  end
end