class SimpleLinkedList
  def initialize
    @list = []
  end

  def push(data)
    if empty?
      @list.unshift(Element.new(data))
    else
      @list.unshift(Element.new(data, @list.first))
    end
  end

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def head
    @list.first
  end

  def peek
    empty? ? nil : head.datum
  end

  def self.from_a(array)
    return SimpleLinkedList.new if array.nil?

    list = SimpleLinkedList.new
    array.reverse.each do |data|
      list.push(data)
    end

    list
  end

  def to_a
    @list.map(&:datum)
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end

  def pop
    popped_element = @list.shift
    popped_element.datum
  end
end

class Element
  attr_reader :datum, :point

  def initialize(datum, point= nil)
    @datum = datum
    @point = point
  end
  
  def next
    point
  end

  def tail?
    point.nil?
  end
end