source 'http://rubygems.org'

gem 'rails', '3.1.0.rc6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'geocoder'
gem 'simplegeo'
gem 'gmaps4rails'
gem 'cancan'
gem 'acts_as_rateable'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# this is for Heroku
group :production do
  gem 'therubyracer-heroku'
  gem 'pg'
end
 
# dev and test frameworks
group :development, :test do
  gem "rspec-rails"
  gem "database_cleaner"
  gem "rails3-generators"
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "nifty-generators"
end
gem "mocha", :group => :test
gem "bcrypt-ruby", :require => "bcrypt"
