module StatMon
  class Log

    attr_accessor :path


    def initialize
      yield(self) if block_given?
    end

  end
end
