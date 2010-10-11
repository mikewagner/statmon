module StatMon
  module Listener

    def init
      @monitors = Hash.new
    end

    def monitors
      @monitors
    end

    def monitor(&block)
      task = Task.new
      yield(task)

      raise DuplicateMonitorName, "Duplicate monitor name" if monitors.has_key? task.name
      monitors[task.name] = task
    end
  
    def start
      EventMachine.run do
        monitors.each do |name, task|
          EventMachine.add_periodic_timer(task.interval) do
            EventMachine.system( task.process ) do |output, status|
              task.log output
            end
          end
        end
      end
    end
  
  end
end
