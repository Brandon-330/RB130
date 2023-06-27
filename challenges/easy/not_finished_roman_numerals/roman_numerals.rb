class RomanNumeral
  ROMAN_NUMERALS = { 
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  def initialize(number)
    @number = number
    @numerals = []
  end

  def to_roman
    while @number > 0
      if all_in_one_letter?
        @numerals << ROMAN_NUMERALS[@number]
        @number -= @number
      else
        @numerals << calculate_roman
      end
    end

    @numerals.join('')
  end

  def all_in_one_letter?
    ROMAN_NUMERALS.keys.include?(@number)
  end

  def calculate_roman
    total = overestimation
    return total unless total.nil?
    underestimation
  end

  def underestimation
    ROMAN_NUMERALS.keys.reverse.each do |num|
      if (@number % num) < @number
        @number -= num
        return ROMAN_NUMERALS[num]
      end
    end
  end

  def overestimation
    ROMAN_NUMERALS.keys.reverse.each_with_index do |num, idx|
      next if num == ROMAN_NUMERALS.keys.reverse.first
      if @number == (ROMAN_NUMERALS.keys.reverse[idx - 1] - num)
        @number -= (ROMAN_NUMERALS.keys.reverse[idx - 1] - num)
        return (ROMAN_NUMERALS[num] + ROMAN_NUMERALS[ROMAN_NUMERALS.keys.reverse[idx - 1]])
      end
    end

    nil
  end
end

puts RomanNumeral.new(4).to_roman