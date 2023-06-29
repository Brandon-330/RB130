class Series
  attr_reader :num_str

  def initialize(num_str)
    @num_str = num_str
  end

  def slices(slice_num)
    raise ArgumentError if slice_num > num_str.length

    idx = 0
    series_arr = []

    while idx + slice_num <= num_str.length
      series_arr << to_i_arr(num_str[idx, slice_num])
      idx += 1
    end

    series_arr    
  end

  private

  def to_i_arr(str)
    str.split('').map(&:to_i)
  end
end