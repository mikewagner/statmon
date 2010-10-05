require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe StatMon::Task do

  context "valid?" do
    
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


  context "loggers" do
    before do
      @task = StatMon::Task.new      
    end
    
    it "should default to empty array" do
      @task.loggers.should == Array.new      
    end
  end


  context "logger" do
    before do
      @task = StatMon::Task.new
    end
    
    it "should store logger" do
      logger = nil
      @task.logger(:file) do |l|
        l.path = '/path/to/file'
        logger = l
      end
      @task.should have(1).loggers 
      @task.loggers.first.should == logger     
    end
   
    it "should store multiple loggers" do
      @task.logger { |l| l.path = '/foo' }
      @task.logger { |l| l.path = '/bar' }
      @task.should have(2).loggers
    end 
 
  end

  context "log" do
    
    before do
      @task = StatMon::Task.new do |t|
        t.name = 'foo'
      end
      @logger = StatMon::Log.new { |l| l.path = '/foo' }
      @task.stub!(:loggers).and_return( [@logger] )
    end

    it "should log output to each logger" do
      @logger.should_receive(:info).and_return(:true)
      @task.log('The quick brown fox jumps over the lazy dog')
    end


  end


end
