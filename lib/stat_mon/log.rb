module StatMon
  class Log

    attr_accessor :file,
                  :network,
                  :port


    def initialize(&block)
      yield(self) if block_given?
    end

  end
end
