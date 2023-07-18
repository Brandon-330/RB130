require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_raise_no_experience_error
    assert_raises(NoExperienceError) do |_|
      hire
    end
  end
end