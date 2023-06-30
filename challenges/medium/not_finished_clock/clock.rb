class Clock
  def self.at(hour, minutes=0)
    @hour = hour
    @minutes = minutes
  end

  def self.add_hour?
    @hour += (@minutes / 60)
    @hour = @hour % 24
    @minutes = @minutes % 60
  end
  
  def self.subtract_hour?
  end

  def self.+(num)
    @minutes += num
    add_hour?
  end

  def self.-(num)
    @minutes -= num
    subtract_hour?
  end

  def self.==(other)
    self.hour == other.hour && self.minutes == other.minutes
  end

  def self.to_s
    "#{hour}:#{minutes}"
  end
end

Clock.at(1, 30) == Clock.at(1, 30)
clock = Clock.at(1, 30) + 10
puts clock.to_s