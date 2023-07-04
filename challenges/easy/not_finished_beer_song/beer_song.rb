class BeerSong
  def self.verse(num)
    if num == 0
      verse = <<~BLOCK
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      BLOCK
    elsif num == 1
      verse = <<~BLOCK
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
      BLOCK
    elsif num == 2
      verse = <<~BLOCK
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
      BLOCK
    else
      verse = <<~BLOCK
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottles of beer on the wall.
      BLOCK
    end

    verse
  end

  def self.verses(starting_num, ending_num)
    new_arr = (starting_num..ending_num).each_with_object([]) do |num, arr|
      arr << verse(num)
    end

    new_arr.join("\n")
  end

  def self.lyrics
    new_arr = (99..0).each_with_object([]) do |num, arr|
      arr << verse(num)
    end

    new_arr.join("\n")
  end
end