# encoding: UTF-8
# Make sure you have the correct versions of the gems (see gemspec) in your load path.
require 'eventmachine'

module StatMon

  autoload :Listener,  'stat_mon/listener'
  autoload :Task,      'stat_mon/task'

  extend Listener

end
