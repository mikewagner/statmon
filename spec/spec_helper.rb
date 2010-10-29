require File.join(File.dirname(__FILE__), '..', 'lib', 'stat_mon')

require 'rspec/core'
require 'autotest/rspec2'

Rspec.configure do |c|
 
   c.mock_with :rspec
end
