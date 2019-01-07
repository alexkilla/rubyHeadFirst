require 'minitest/autorun'

class TestSomething < Minitest::Test

  def test_true_assertion
    assert(true)
  end

  def test_assert_false
    assert(false)
  end
end
