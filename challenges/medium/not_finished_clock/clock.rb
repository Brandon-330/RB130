class Clock
  def self.at(hour, minute=0)
    @hour = hour
    @minute = minute
  end

  def self.add_hour?
    @hour += (@minute / 60)
    @hour = @hour % 24
    @minute = @minute % 60
  end
  
  def self.subtract_hour?
    @hour -= (@minute / 60)
    @hour = @hour % 24
    @minute = @minute % 60
  end

  def self.+(num)
    @minute += num
    add_hour?
    Clock.at(@hour, @minute)
  end

  def self.-(num)
    @minute -= num
    subtract_hour?
    Clock.at(@hour, @minute)
  end

  def self.==(other)
    self.hour == other.hour && self.minute == other.minute
  end

  def self.to_s
    "#{@hour}:#{@minute}"
  end
end

puts Clock.at(1, 30) == Clock.at(1, 30)
clock_2 = Clock.at(2, 50)
puts clock_2
clock = Clock.at(1, 30) + 10
puts clock