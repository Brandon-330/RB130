def splat(array)
  yield(array)
end

raven, finch, *raptors = %w(raven finch hawk eagle)
p raven # => 'raven'
p finch # => 'finch'
p raptors  # => ['hawk','eagle']
splat(%w(raven finch hawk eagle)) { |raven, flinch, *things| p things.join(', ') }