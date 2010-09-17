require File.expand_path( File.dirname(__FILE__) + '/helper' )

class StatMonTest < Test::Unit::TestCase

  def setup
    @config = {
      "iostat" => {
        "interval" => 5,
        "process" => [
          { "log" => { "file" => "/home/mwagner/iostat.log"} },
          { "log" => { "network" => "http://localhost/", "port" => 80 } }
        ]
      }
    }   
  end 

  should "have"




end
