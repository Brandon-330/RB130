class TextAnalyzer
  def process(&block)
    file_data = File.read(yield)  # Read given text file from given block

    paragraphs = 1  # Code always start with 1 paragraog
    freq = 0        # Frequency of char (for \n cases)
    lines = 1       # Code always starts at line 1
    file_data.chars.each do |char|  # Iterate through each char of the file
      if char =~ /[\n]/ 
        freq += 1
        lines += 1
      else
        freq = 0
      end

      paragraphs += 1 if freq > 1
    end

    words = file_data.split.size

    puts <<~block
    #{paragraphs} paragraphs
    #{lines} lines
    #{words} words
    block
  end
end

analyzer = TextAnalyzer.new
analyzer.process  { 'essay.txt' }