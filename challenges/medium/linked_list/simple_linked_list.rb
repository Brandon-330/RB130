require 'pry'

class SimpleLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def self.from_a(array)
    list = SimpleLinkedList.new()

    return list if array.nil?

    array.reverse.each do |datum|
      list.push(datum)
    end

    list
  end

  def to_a
    datum_array = []
    current_element = @head
    size.times do |_|
      datum_array << current_element.datum
      current_element = current_element.next
    end

    datum_array
  end

  def reverse
    datum_array = self.to_a
    self.class.from_a(datum_array.reverse)
  end

  def push(datum)
    @head = Element.new(datum, @head)
  end

  def peek
    return nil if empty?
    @head.datum
  end

  def size
    return 0 if @head.nil?

    current_element = @head
    counter = 1
    while !current_element.tail?
      counter += 1
      current_element = current_element.next
    end

    counter
  end

  def pop
    popped_element = @head
    @head = @head.next
    (size - 1).times 

    popped_element.datum
  end

  def empty?
    size.zero?
  end
end

class Element
  attr_reader :datum 
  attr_accessor :next

  def initialize(datum, point=nil)
    @datum = datum
    @next = point
  end

  def tail?
    @next.nil?
  end
end