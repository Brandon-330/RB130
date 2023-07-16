def zip(arr1, arr2)
  idx = 0
  outer_arr = []
  while idx < arr1.size
    outer_arr << [arr1[idx], arr2[idx]]
    idx += 1
  end

  outer_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]