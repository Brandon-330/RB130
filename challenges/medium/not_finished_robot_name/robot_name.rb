class Robot
  attr_reader :name

  @@names = []

  def initialize
    @name = randomizer
    @@names << @name
  end

  def reset
    @name = randomizer
  end

  private

  def randomizer
    new_name = []
    2.times { |_| new_name << ('A'..'Z').to_a.sample }
    3.times { |_| new_name << (0..9).to_a.sample }
    new_name = new_name.join('') 

    if @@names.include?(new_name)
      self.reset
    else
      @@names.delete(self.name)
      new_name
    end
  end
end