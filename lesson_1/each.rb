def each(arr)
  counter = 0
  while counter < arr.size
    yield(arr[counter])
    counter += 1
  end

  arr
end

new_arr = []

each([1, 2, 3]) do |element|
  new_arr << element
end

p new_arr