require 'date'

class Meetup
  WEEKDAYS = %w(sunday monday tuesday wednesday thursday friday saturday)

  def initialize(year, month)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    weekday = weekday.downcase
    d = Date.new(@year, @month)

    week_number = case schedule.downcase
                  when 'first' then 1
                  when 'second' then 2
                  when 'third' then 3
                  when 'fourth' then 4
                  when 'fifth' then 5
                  when 'last' then compute_last_week_number(weekday)
                  when 'teenth' then compute_teenth_week_number(weekday) #Guaranteed to happen every month, so this value has to last the whole month
                  else
                    raise ArgumentError, "Invalid schedule"
                  end

    week_number -= 1 if d.wday == WEEKDAYS.index(weekday)
    while week_number != 0
      d += 1
      week_number -= 1 if d.wday == WEEKDAYS.index(weekday)
    end

    d.month == @month ? d : nil
  end

  private

  def compute_last_week_number(weekday)
    d = Date.new(@year, @month)
    week_number = 0
    while d.month == @month
      week_number += 1 if d.wday == WEEKDAYS.index(weekday)
      d += 1
    end

    week_number
  end

  def compute_teenth_week_number(weekday)
    d = Date.new(@year, @month)
    week_number = 1
    while d.month == @month
      week_number += 1 if d.wday == WEEKDAYS.index(weekday)
      return week_number if [13, 14, 15, 16, 17, 18, 19].include?(d.day)
      d += 1
    end
  end
end