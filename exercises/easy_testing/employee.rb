class Employee
  attr_reader :name, :years_of_experience
  
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
  end

  def hire
    years_of_experience > 5 ? 'hired' : raise(NoExperienceError, 'You do not have enough experience for this position')
  end
end

class NoExperienceError < StandardError
end