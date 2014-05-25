# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'sidekiq'
config.gem 'redis'
# Initialize the Rails application.
TilesChallenge::Application.initialize!
