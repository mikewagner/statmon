module StatMon
  module CLI
    class Execute
   
      def initialize(params)
        @params = params
        listen
      end
      
      def listen
        load_config( @params[:config] )
      end
      
      def load_config( config )
        abort "Unable to find config file" unless File.exist?( config )
        options = YAML.load( File.read( config ) )
        puts options.inspect
      end
      
   
    end
  end
end