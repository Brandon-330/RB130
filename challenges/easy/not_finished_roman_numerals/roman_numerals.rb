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

  attr_accessor :number, :roman

  def initialize(number)
    @number = number
    @roman = []
  end

  def to_roman
    while number > 0
      if ROMAN_NUMERALS.keys.include?(number)
        exact_roman
      elsif overestimated?
        overestimated
      else
        underestimated
      end
    end

    roman.join('')
  end

  def exact_roman
    roman << ROMAN_NUMERALS[number]
    @number = 0
  end

  def overestimated?
    ROMAN_NUMERALS.keys.reverse.any? do |num1|
      ROMAN_NUMERALS.keys.reverse.any? do |num2|
        next if num2 > num1
        (num1 - num2 != 0) && number / (num1 - num2) > 0
      end
    end
  end

  def overestimated
    bool = false

    ROMAN_NUMERALS.keys.reverse.each do |num1|
      ROMAN_NUMERALS.keys.reverse.each do |num2|
        next if num2 > num1
        
        if (num1 - num2 != 0) && number / (num1 - num2) > 0 && !bool
          bool = true
          @number -= (num1 - num2)
          roman << (ROMAN_NUMERALS[num2] + ROMAN_NUMERALS[num1])
        end
      end
    end
  end

  def underestimated
    bool = false

    ROMAN_NUMERALS.keys.reverse.each do |num|
      if number / num > 0 && !bool
        bool = true
        @number -= num
        roman << ROMAN_NUMERALS[num]
      end
    end
  end
end

puts RomanNumeral.new(1).to_roman
puts RomanNumeral.new(2).to_roman
puts RomanNumeral.new(3).to_roman
puts RomanNumeral.new(4).to_roman
puts RomanNumeral.new(5).to_roman
puts RomanNumeral.new(6).to_roman
puts RomanNumeral.new(7).to_roman