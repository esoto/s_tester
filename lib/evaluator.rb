require "s_tester_exception"
class Object

  def be_equal value
    return {:evaluator => :eq, :result_expected => value}
  end

  def be_nil
    return { :evaluator => :eq, :result_expected => nil }
  end

  def should comparator
    send comparator[:evaluator], comparator[:result_expected]
  end

  def eq result_expected
    raise STesterException.new(self, "Equals", result_expected) unless self == result_expected
  end

  def should_not comparator
    raise STesterException.new(self, "Equals", comparator[:result_expected]) unless self != comparator[:result_expected]
  end
end
