module StatMon
  module CLI
    class Execute
   
      def initialize(params)
        @params = params
        listen
      end
      
      def listen
        config = load_config( @params[:config] )
        puts config.inspect
      end
      
      def load_config( config )
        abort "Unable to find config file" unless File.exist?( config )
        YAML.load( File.read( config ) )
      end
      
   
    end
  end
end
