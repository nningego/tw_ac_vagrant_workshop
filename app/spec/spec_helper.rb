require 'bundler'
require 'pry'
require_relative '../db/create'

RSpec.configure do |config|
  # Spec Filtering
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  # Output
  config.tty = true
  config.formatter = :documentation

end



