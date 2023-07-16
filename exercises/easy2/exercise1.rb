def step(starting_num, ending_num, step_num)
  counter = starting_num
  
  while counter <= ending_num
    yield(counter)
    counter += step_num
  end

  counter
end

step(1, 10, 3) { |value| puts "value = #{value}" }