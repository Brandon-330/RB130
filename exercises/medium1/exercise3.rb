items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  puts "#{items.join(', ')}"
  puts "Nice selection of food we have gathered!"
end

gather(item) { |_| puts "Let's start gathering food" }
gather(item) { |items| puts items}
gather(item) { |_|}