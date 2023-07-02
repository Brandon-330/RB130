require 'date'

class Meetup
  attr_accessor :day, :weekday
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
    @day = 1
    @weekday = nil
  end

  def day(weekday, schedule)
    @weekday = weekday

    d = Date.civil(year, month, day)
    day1_weekday = Date::DAYNAMES[d.wday]

    if ['first', 'second', 'third', 'fourth', 'fifth'].include?(schedule.downcase)
      order_of_week
    elsif 

    case schedule.downcase
    when ['first', 'second']
    when 'teenth' then find_teenth
    when 'last' then last_week

    ['first', 'second', 'third', 'fourth', 'fifth'].include?(schedule.downcase)

    week_number = case schedule.downcase
                  when 'first' then 1
                  when 'second' then 2
                  when 'third' then 3
                  when 'fourth' then 4
                  when 'fifth' then 5
                  when 'teenth' then [13, 14, 15, 16, 17, 18, 19]
                  else
                    'last'
                  end
    end

    while weekday_of_interest != weekday && week_number != 0
      day += 1
      weekday_of_interest = Date::DAYNAMES[Date.civil(year, month, day).wday]
      week_number -= 1 if weekday_of_interest == weekday
    end
  end

  def last_weekday(weekday)

  end
end
p Date::DAYNAMES
p Meetup.new(2013, 12).day('Monday', 'First')