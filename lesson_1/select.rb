def select(collection)
  index = 0
  new_arr = []
  while index < collection.size
    is_truthy = yield(collection[index])
    new_arr << collection[index] if is_truthy
    index += 1
  end

  new_arr
end

array = [1, 2, 3, 4, 5]
hash = {one: 1, two: 2, three: 3, four: 4, five: 5}

select(array) { |num| num.odd? }      # => [1, 3, 5]
select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true