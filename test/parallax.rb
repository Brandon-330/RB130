class Parallax
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  def self.shift(str1, str2)
    Parallax.new(str1, str2).shift
  end

  def shift
    substrings = acceptable_substrings

    separated_substrings = separate_by_appearance(substrings)

    separated_substrings[0].join + @str1 + separated_substrings[1].join
  end

  private

  def acceptable_substrings
    substrings_arr = []
    iterate_by_three(@str1) do |substring|
      if @str2.include?(substring) && ascii_values_decrease?(substring)
        substrings_arr << substring
      end
    end

    substrings_arr
  end

  def separate_by_appearance(collection)
    first_array = []
    last_array = []
    collection.each_with_index do |substring, idx|
      if idx.even?
        first_array.unshift(substring)
      else
        last_array << substring
      end
    end

    [first_array, last_array]
  end

  def ascii_values_decrease?(string)
    all?(string) do |a, b|
      (a <=> b) == -1
    end
  end

  def iterate_by_three(string)
    index = 0

    while index + 3 < string.length
      yield(string[index, 3])
      index += 1
    end

    string
  end

  def all?(string)
    index = 0
    while index + 1 < string.length
      return false unless yield(string[index + 1], string[index])
      index += 1
    end

    true
  end
end
