def step(start_value, end_value, increment_value)
  current_value = start_value
  while current_value <= end_value
    yield(current_value)
    current_value += increment_value
  end

  end_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }