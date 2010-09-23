require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe StatMon do

  context "#monitors" do
    it "should default to empty hash" do
      StatMon.monitors.should == Hash.new
    end
  end

  context "#monitor" do
    it "should store monitor" do
      monitor = nil
      StatMon.monitor do |m|
        m.name = 'iostat'
        monitor = m
      end
      StatMon.monitors.values.first.should == monitor
    end
  end




end
