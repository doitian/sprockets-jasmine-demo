module Application
  class App < Sinatra::Base
    get(/.+/) do
      path = request.path
      path = File.join(path, 'index.html') if path !~ /\.[a-z0-9]+$/i
      send_file File.join(settings.public_folder, path)
    end
  end
end
