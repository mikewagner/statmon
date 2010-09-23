module StatMon
  module CLI
    class Execute
   
      def initialize(params)
        @params = params
        start
      end
      
      def start
        config = load_config( @params[:config] )
      end
      
      def load_config( config )
        abort "Unable to find config file" unless File.exist?( config )
        load_stat_file( config )
      end
     
      
      def load_stat_file( stat_file )
        load File.expand_path( stat_file )
      rescue Exception => e
        puts "There was an error in #{stat_file}"
        puts "\t" + e.message
        puts "\t" + e,backtrace.join("\n\y\t")
        
      end
    end
  end
end
