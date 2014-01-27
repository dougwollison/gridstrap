require 'compass'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('gridstrap', :path => extension_path)

module Gridstrap
  VERSION = "0.1.0"
  DATE = "2014-01-27"
end