# encoding: UTF-8
# Make sure you have the correct versions of the gems (see gemspec) in your load path.
require 'eventmachine'

module StatMon
  
  autoload :Configuration,       'stat_mon/configuration'
  autoload :Listner,             'stat_mon/listener'


  extend configuration
end