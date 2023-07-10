class Clock
  attr_reader :hour, :minute
  protected :hour, :minute

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    if minute >= 0
      hour += minute / 60
    else
      hour -= 1 + (minute / -60)
    end

    Clock.new(hour % 24, minute % 60)
  end

  def to_s
    format('%02d', hour) + ':' + format('%02d', minute)
  end

  def +(given_minutes)
    Clock.at(hour, minute + given_minutes)
  end

  def -(given_minutes)
    Clock.at(hour, minute - given_minutes)
  end

  def ==(other)
    self.hour == other.hour && self.minute == other.minute
  end
end