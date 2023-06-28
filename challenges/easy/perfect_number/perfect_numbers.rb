class PerfectNumber
  def self.classify(number)
    raise StandardError if number <= 0

    divisors = divisors_of(number)
    aliquot_sum = divisors.sum
    
    case aliquot_sum
    when number then 'perfect'
    when (1...number) then 'deficient'
    else
      'abundant'
    end
  end

  def self.divisors_of(number)
    (1...number).each_with_object([]) do |iterating_num, divisors_arr|
      divisors_arr << iterating_num if number % iterating_num == 0
    end
  end
end