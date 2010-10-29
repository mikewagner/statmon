# encoding: UTF-8
# Make sure you have the correct versions of the gems (see gemspec) in your load path.
require 'eventmachine'
require 'logger'

require 'stat_mon/cli/execute'

module StatMon

  VERSION = '0.1.0'


  autoload :DuplicateMonitorName,  'stat_mon/exceptions'

  autoload :Listener,              'stat_mon/listener'
  autoload :Task,                  'stat_mon/task'
  autoload :Log,                   'stat_mon/log'
  autoload :Version,               'stat_mon/version'

  extend Listener



  def self.version
    puts "Version #{VERSION}"
  end


end
