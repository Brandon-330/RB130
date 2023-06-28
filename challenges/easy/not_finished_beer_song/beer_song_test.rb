class BeerSong
  def self.verse(num_of_bottles)
    "#{num_of_bottles} of beer on the wall, 99 bottles of beer.\n"
    "Take one down and pass it around, #{num_of_bottles - 1} bottles of beer on the wall.\n"
  end
end