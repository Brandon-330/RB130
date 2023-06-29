class Diamond
  @@letters = []

  def self.make_diamond(end_letter)
    track_letters(end_letter)

    total_lines = ((@@letters.size * 2) - 1)
    idx = -1
    total_lines.times do |line_number|
      idx += 1
      
      if line_number > total_lines / 2
        idx -= 2
      end

      print_diamond(idx)
    end
  end

  def self.track_letters(end_letter)
    ('A'..'Z').each do |alphabet|
      if (end_letter <=> alphabet) >= 0
        @@letters << alphabet
      end
    end
  end

  def self.print_diamond(idx)
    size = @@letters.size - 1
    first_spaces = size - idx
    secondary_spaces = idx
    secondary_spaces += 1 if idx > 1
    
    print ' ' * first_spaces + @@letters[idx] + ' ' * secondary_spaces
    print @@letters[idx] unless @@letters[idx] == 'A'
    puts ' ' * first_spaces
  end
end

Diamond.make_diamond('A') == 'A'