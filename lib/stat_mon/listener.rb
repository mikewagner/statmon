module StatMon
  module Listener

    def config( config )
      @config = config
    end

    def start
      @config.each do |config|
        task = StatMon::Task.new( config ) 
        self.registry << task
      end
    end

    def reqistry
      @registry ||= StatMon::Registry.new
    end
    
  end
end
