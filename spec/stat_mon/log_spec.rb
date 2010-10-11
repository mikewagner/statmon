require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StatMon::Log do

  context "initialization" do
    it "should return logger" do
      log = StatMon::Log.new('foo')
      log.should be_instance_of StatMon::Log
      log.class.superclass.should == Logger
    end
  end

end
