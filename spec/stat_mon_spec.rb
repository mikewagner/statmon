require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe StatMon do

  context "#monitors" do
    it "should default to empty hash" do
      StatMon.init
      StatMon.monitors.should == Hash.new
    end
  end

  context "#monitor" do
    before do
      StatMon.init
    end
  
    it "should store monitor" do
      monitor = nil
      StatMon.monitor do |m|
        m.name = 'iostat'
        monitor = m
      end
      StatMon.should have(1).monitors
      StatMon.monitors['iostat'].should == monitor
    end

    it "should allow multiple monitors" do
      StatMon.monitor { |m| m.name = 'foo' }
      StatMon.monitor { |m| m.name = 'bar' }
      StatMon.should have(2).monitors
    end

    it "should raise error for duplicate monitor name" do
      StatMon.monitor { |m| m.name = 'test' }
      lambda {
        StatMon.monitor { |m|  m.name = 'test' }
      }.should raise_error
    end

  end

end
