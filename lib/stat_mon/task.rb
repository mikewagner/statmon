module StatMon
  class Task

    attr_accessor :name,
                  :process,
                  :interval
                  

    def initialize(&block)
      yield(self) if block_given?
    end

    def valid?
      valid = true
      valid = false if self.name.nil?
      valid = false if self.process.nil?
      valid
    end
  
    def loggers
      @loggers ||= Array.new
    end


    def logger( &block )

    end


  end
end
