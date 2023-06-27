=begin
### Problem
# Input: String 
# Output: Integer (Hamming distance)

## Rules
# Hamming distance can only be obtained for sequences of equal length
# Sequences of unequal length, compute hamming distance over shorter length

### Data Structure
# DNA is an object and thus we need to define a DNA class
# DNA class accepts an argument during instantiation, that is the passed in string
# DNA class has an instance method to compute hamming distance of a string
=end

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparing_strand)
    idx = 0
    freq = 0

    short_string = shorter?(strand, comparing_strand)
    while idx < short_string.length
      freq += 1 if not_equal?(strand[idx], comparing_strand[idx])
      idx += 1
    end

    freq
  end

  def shorter?(strand, comparing_strand)
    strand.length < comparing_strand.length ? strand : comparing_strand
  end

  def not_equal?(strand_char, comparing_strand_char)
    strand_char != comparing_strand_char
  end
end

puts DNA.new('ABC').hamming_distance('ABD')