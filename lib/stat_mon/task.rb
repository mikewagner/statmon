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

    def log( msg )
      loggers.each do |logger|
        logger.info( msg )
      end
    end
  
    def loggers
      @loggers ||= Array.new
    end

    def logger( &block )
      logger = Log.new
      yield(logger)

      loggers << logger       
    end

  end
end
