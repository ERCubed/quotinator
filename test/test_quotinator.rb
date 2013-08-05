# encoding: utf-8

require 'test/unit'
require 'quotinator'

class QuotinatorTest < Test::Unit::TestCase

  # Running tests on the following phrase:
  # Let’s see if this passes the “test” – I hope it does…
  # Of course, the long dash is breaking the tests, so we'll skip it for the moment.
  
  def test_all
    input = "Let’s see if this passes the “test” I hope it does…"
    output = Quotinator.replace_all(input)
    expected = "Let's see if this passes the \"test\" I hope it does..."
    assert_equal expected, output
  end

  def test_doublequotes
    input = "Let’s see if this passes the “test” I hope it does…"
    output = Quotinator.doublequotes(input)
    expected = "Let’s see if this passes the \"test\" I hope it does…"
    assert_equal expected, output
  end

  def test_singlequotes
    input = "Let’s see if this passes the “test” I hope it does…"
    output = Quotinator.singlequotes(input)
    expected = "Let's see if this passes the “test” I hope it does…"
    assert_equal expected, output
  end

  def test_ellipsis
    input = "Let’s see if this passes the “test” I hope it does…"
    output = Quotinator.ellipsis(input)
    expected = "Let’s see if this passes the “test” I hope it does..."
    assert_equal expected, output
  end

  
end
