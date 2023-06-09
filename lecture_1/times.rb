def times(n)
  counter = 0
  while counter < n
    yield(counter)
    counter += 1
  end
  
  n
end

# puts "What number would you like to count to?"
# n = gets.chomp

times(5) do |element| 
  puts element
end