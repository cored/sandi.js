require 'sinatra'
require 'rack/test'
require_relative '../config/boot'

# Sinatra test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app 
  Sinatra::Application
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.include Rack::Test::Methods

  config.order = 'random'
end
