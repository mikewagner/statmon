module StatMon
  module Listener

    def monitors
      @monitors ||= Hash.new
    end

    def monitor(&block)
      
      klass = Class.new
      klass.instance_eval( 'def name=(p); @name = p; end' )
      yield(klass) if block_given?

      monitors[klass.name] = klass

    end


    
  end
end
