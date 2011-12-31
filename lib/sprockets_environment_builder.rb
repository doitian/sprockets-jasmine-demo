require 'sprockets'

class SprocketsEnvironmentBuilder
  def self.build(environment = :development)
    sprockets = Sprockets::Environment.new
    sprockets.append_path 'assets/javascripts'
    sprockets.append_path 'assets/stylesheets'
    sprockets.append_path 'assets/images'
    sprockets.append_path 'vendor/assets/javascripts'
    sprockets.append_path 'vendor/assets/stylesheets'
    sprockets.append_path 'spec/javascripts'

    sprockets
  end
end
