ruby "1.9.3"

source :rubygems

gem "thin"
gem "rails", "~> 3.2.0"
gem "pg"

group :assets do
  gem "sass-rails"
  gem "compass", github: "chriseppstein/compass", branch: "master"
  gem "compass-rails"
  gem "fancybox2-rails"
  gem "jquery-rails"
  gem "coffee-rails"
  gem "uglifier"
end

# Views
gem "haml-rails"
gem "redcarpet"

# External APIs
gem "twitter", require: false
gem "flickr-objects", require: false

# Database
gem "friendly_id"

group :development, :test do
  gem "debugger"
  gem "pry-rails"
  gem "rspec-rails"
end

group :test do
  gem "capybara"
  gem "factory_girl"
  gem "activerecord-nulldb-adapter", ">= 0.2.3"
  gem "database_cleaner"
end
