def divisors(given_num)
  (1..given_num).to_a.select do |iterating_num|
    given_num % iterating_num == 0
  end.sort
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
#divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute