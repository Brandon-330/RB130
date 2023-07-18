def splat(array)
  yield(array)
end

splat(%w(raven finch hawk eagle)) do |raven, *raptors|
  puts raptors
end