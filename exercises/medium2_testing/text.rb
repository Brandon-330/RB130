class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end
end

file = File.open('text.txt', 'r')
text = Text.new(file.read)
p text.swap('a', 'e')