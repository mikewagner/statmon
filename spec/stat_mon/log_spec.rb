require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StatMon::Log do

  context "initialization" do
    it "should accept a block" do
      log = StatMon::Log.new do |l|
        l.path = '/foo'  
      end
      log.path.should == '/foo'
    end    

  end

end
