if defined?(Sinatra)
  # when sinatra is running in dev mode
  project_path = Sinatra::Applcation.root 
  environment = :development
else
  # configuration to use when running in the compass clt
  relative_assets = true
  environment :production
end

scss_dir = 'views'
images_dir = File.join 'public', 'images'
