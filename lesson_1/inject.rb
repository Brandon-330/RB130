def inject(array, acc= 0)
  index = 0
  
  while index < array.size
    acc = yield(acc, array[index])
    index += 1
  end

  p acc
end

array = [1, 2, 3, 4, 5]

inject(array) { |acc, num| acc + num }                    # => 15
inject(array, 10) { |acc, num| acc + num }                # => 25
inject(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass