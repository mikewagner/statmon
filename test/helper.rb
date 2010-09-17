require 'rubygems'

gem 'shoulda',           '~> 2.11.3'
gem 'mocha',             '~> 0.9.8'

$:.unshift File.expand_path( File.dirname(__FILE__) + '/../lib' )

require 'stat_mon'
require 'shoulda'
require 'mocha'
