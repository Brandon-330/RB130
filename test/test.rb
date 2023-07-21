def implicit_block
  yield
end

def explicit_block(&block)
  pass_it_along(block)
end

def pass_it_along(block)
  block.call
end

implicit_block { puts "I am implicitly passed in as argument :)"}
explicit_block { puts "I am explicitly passed in as argument, and I am in inside two methods >:)"}