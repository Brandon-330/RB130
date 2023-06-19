items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*foodies, wheat |
  puts foodies.join(', ')
  puts wheat
end

gather(items) do |apple, *foodies , wheat|
  puts apple
  puts foodies.join(', ')
  puts wheat
end

gather(items) do |apple, *foodies|
  puts apple
  puts foodies.join(', ')
end

gather(items) do |apple, corn, cabbage, wheat|
  puts "#{apple}, #{corn}, #{cabbage}, and #{wheat}"
end