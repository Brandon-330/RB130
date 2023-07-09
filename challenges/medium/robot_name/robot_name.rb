class Robot
  attr_reader :name

  @@all_names = []

  def name
    if @name.nil?
      while @name.nil? || @@all_names.include?(@name)
        @name = randomizer
      end

      @@all_names << @name
    end

    @name
  end

  def reset
    @@all_names.delete(@name)
    @name = nil
  end

  private

  def randomizer
    new_name = ''
    
    2.times { |_| new_name += ('A'..'Z').to_a.sample }
    3.times { |_| new_name += (1..9).to_a.map(&:to_s).sample }

    new_name
  end
end