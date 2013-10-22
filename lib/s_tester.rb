require "./evaluator"
require "./painter"

class STester

  class << self

    def description text
      p text
    end

    def context text
      p text
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
