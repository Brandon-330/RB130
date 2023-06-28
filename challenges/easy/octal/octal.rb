class Octal
  attr_reader :number_str

  def initialize(number_str)
    @number_str = number_str
  end

  def to_decimal
    return 0 if exception?

    exponent = number_str.length

    number_str.chars.map(&:to_i).inject(0) do |sum, iterating_num_str|
      exponent -= 1
      sum + (iterating_num_str * (8**exponent))
    end
  end

  private

  def exception?
    number_str.chars.any? { |char| char =~ /[a-zA-Z]/ || ['8', '9'].include?(char) }
  end
end