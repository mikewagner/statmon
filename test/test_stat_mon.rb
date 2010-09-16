require File.dirname(__FILE__) + '/helper'


class StatMonTest < Test::Unit::TestCase

  def setup
    @config = { 
      "iostat" => {
        "interval" => 5,
        "process"  => "iostat -d -k -t -x",
        "log" => {
          "network" => "http://localhost/",
          "port"    => 80
        }
      }   
    }   
  end 

  
  should "have invalid config error" do
    lambda {
      StatMon.config()
    }.should raise_error
  end 


end
