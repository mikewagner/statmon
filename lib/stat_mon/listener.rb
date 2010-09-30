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
    
  end
end
