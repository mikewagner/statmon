module StatMon
  module Listener
    

    def self.load( config )
      config.each do |name, params|
        self.registry << StatMon::Task.new( name, params ) 
      end
    end


    def self.start

    end

      
    
  end
end
