items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*items2, last_item|
  puts items2.join(', ')
  puts last_item
end

gather(items) do |first_item, *middle_items, last_item|
  puts first_item
  puts middle_items.join(', ')
  puts last_item
end

gather(items) do | first_item, *other_items|
  puts first_item
  puts other_items.join(', ')
end

gather(items) do |*items, _, _, _|
  puts items.join(', ')
end