# typed: false
require "minitest/autorun"
require_relative './interview.rb'

class InterviewTest < Minitest::Test
  def setup
    @subject = Interview.new(1, 2)
  end
  
  def test_it_has_reader_for_param_one
    assert_equal 1, @subject.param_one
  end

  def test_it_has_reader_for_param_two
    assert_equal 2, @subject.param_two
  end
end
