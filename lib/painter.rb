class Painter

  class << self

    def correct text
      print "\033[32m#{text}\033[0m"
    end

    def error text
      print "\033[31m#{text}\033[0m"
    end

    def attention text
      print "\033[33m#{text}\033[0m"
    end

  end
end
