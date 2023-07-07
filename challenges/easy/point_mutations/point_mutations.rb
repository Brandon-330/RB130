=begin
8:38
### Problem
# Input: String
# Output: Integer

## Rules
# Explicit:
  - Count the differences in DNA length
  - If unequal length, compute hamming distance over shorter length

# Implicit:
  - Comparison between strings always start at the beginning

### Data Structure
# Iterate through both strings
=end

class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(gene)
    idx = 0
    counter = 0
    min_length = [strand.size, gene.size].min

    while idx < min_length
      counter += 1 if strand[idx] != gene[idx]
      idx += 1
    end

    counter
  end
end
