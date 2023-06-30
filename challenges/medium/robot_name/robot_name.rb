class Robot
  @@names = []

  def name
    return @name if @name
    @name = name_randomizer while @@names.include?(@name) || @name.nil?
    @@names << @name

    @name
  end

  def reset
    @@names.delete(self.name)
    @name = nil
  end

  private

  def name_randomizer
    new_name = []
    2.times { |_| new_name << ('A'..'Z').to_a.sample }
    3.times { |_| new_name << (0..9).to_a.sample }
    new_name.join('')
  end
end