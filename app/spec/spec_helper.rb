require 'bundler'
require 'pry'

paths = [
    File.expand_path('../../lib', __FILE__),
    File.expand_path('../../db', __FILE__),
]

paths.each do |path|
  ($:.unshift path) unless ($:.include? path)
end

require 'dbclient'
require 'create'

RSpec.configure do |config|

  # Output
  config.tty = true
  config.formatter = :documentation
  config.color= true
end



