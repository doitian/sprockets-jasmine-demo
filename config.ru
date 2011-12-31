require 'rubygems'
require 'bundler'
require 'sinatra'

case settings.environment
when :production
  Bundler.require :production, :default
else
  Bundler.require :development, :test, :default
end

require File.expand_path('../lib/sprockets_environment_builder', __FILE__)
require File.expand_path('../application', __FILE__)

map '/assets' do
  sprockets = SprocketsEnvironmentBuilder.build(settings.environment)
  run sprockets
end

map '/' do
  run Application::App
end
