ENV["RACK_ENV"] ||= "development"

require "bundler"
Bundler.setup

Bundler.require(:default, ENV["RACK_ENV"].to_sym)

require './server'
Dir["./lib/**/*.rb"].each { |f| require f }
