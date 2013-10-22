class STesterException < Exception

  attr_reader :value, :comparator, :expected_result

  def initialize value, comparator, expected_result
    @value, @comparator, @expected_result = value, comparator, expected_result
  end

  def message
    "Sorry bro, #{value} is not #{comparator} to #{expected_result}. Fix it!"
  end
end
