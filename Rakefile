
begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'
rescue LoadError
  task :jasmine do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end

task :jasmine => ['assets:precompile']
task 'jasmine:ci' => ['assets:precompile']
namespace :assets do
  desc 'compile sprockets to static files'
  task :precompile do
    require File.expand_path('../lib/sprockets_environment_builder', __FILE__)
    environment = (ENV['RACK_ENV'] || 'development').to_sym
    sprockets = SprocketsEnvironmentBuilder.build(environment)

    FileUtils.mkdir_p 'public/assets'

    %w{application.js spec_helper.js specs.js}.each do |f|
      path = File.join 'public', 'assets', f
      sprockets.find_asset(f).write_to path
    end
  end
end
