require "./s_tester_exception"
class Object

  def be_equal value
    return {:evaluator => :eq, :result_expected => value}
  end

  def should comparator
    send comparator[:evaluator], comparator[:result_expected]
  end

  def method_missing sym, *args, &block
    raise "Sorry we'll build it ASAP"
  end

  def eq result_expected
    raise STesterException.new(self, "Equals", result_expected) unless self == result_expected
  end
end
