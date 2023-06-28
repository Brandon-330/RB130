class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(num)
    SumOfMultiples.new(3, 5).to(num)
  end

  def to(num)
    total = 0

    (1...num).each do |iterating_num|
      total += iterating_num if @multiples.any? { |multiple| iterating_num % multiple == 0 }
    end

    total
  end
end