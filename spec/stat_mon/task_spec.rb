require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StatMon::Task do

  context ".valid?" do
    
    before do
      @task = StatMon::Task.new do |t|
        t.name     = 'foo'
        t.interval = 5
        t.process  = 'bar'
      end
    end   

    it "should return true" do
      @task.should be_valid
    end

    it "should return false if no name" do
      @task.name = nil
      @task.should_not be_valid
    end
     
    it "should return false if no process" do
      @task.process = nil
      @task.should_not be_valid
    end


  end





end
