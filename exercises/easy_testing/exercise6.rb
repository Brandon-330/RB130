require 'minitest/autorun'

require_relative 'employee'

class TestExample < Minitest::Test
  def setup
    @years_of_experience = 2
  end

  def test_hire
    employee = Employee.new('Rick', 2)
    assert_raises(NoExperienceError) { employee.hire}
  end
end

