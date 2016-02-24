require 'compass'
require 'sinatra'
require 'haml'
require 'sass'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :haml, { :format => :html5 }
  set :scss, Compass.sass_engine_options
end

get '/' do
  haml :index
end

get '/scss.css' do
  scss :styles
end
