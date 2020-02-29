# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
BUNDLE_WITHOUT: "production"

run Rails.application
