require 'bundler/setup'
Bundler.require
require_all 'app'

# Create guests
jacob = Guest.new("Jacob")
joshua = Guest.new("Joshua")
zed = Guest.new("zed")