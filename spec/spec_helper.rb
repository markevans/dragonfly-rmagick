require "rubygems"
require "bundler"
Bundler.setup(:default, :test)

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'dragonfly-rmagick'
require 'support/image_matchers'

SAMPLES_DIR = File.expand_path(File.dirname(__FILE__) + '/../samples') unless defined?(SAMPLES_DIR)

require 'logger'
LOG_FILE = File.dirname(__FILE__) + '/spec.log' unless defined?(LOG_FILE)
FileUtils.rm_rf(LOG_FILE)

def test_app
  Dragonfly::App.send(:new)
end
