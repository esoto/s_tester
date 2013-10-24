require "evaluator"
require "painter"

class STester

  class << self

    def description klass, &test
      klass
      yield test
    end

    def context text, &test
      p text
      yield test
    end

    def it text
      begin
        yield
        Painter.correct text
      rescue STesterException => e
        Painter.error(text + e.message)
      end
    end

  end

end
