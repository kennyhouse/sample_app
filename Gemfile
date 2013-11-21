source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'bootstrap-sass', '2.0.0'

group :development, :test do
	gem 'sqlite3', '1.3.5'
	gem 'rspec-rails', '2.9.0'
	gem 'guard-rspec', '0.5.5'
end
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3' ---------------- hide this original codes


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.4'
  gem 'coffee-rails', '3.2.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.1'

group :test do
	gem 'rspec-rails', '2.9.0'
	gem 'capybara', '1.1.2'
	#the following code solve the problem of the rb-fsevent, referenced by https://github.com/thibaudgg/rb-fsevent/issues/20
	gem 'rb-fsevent', :git => 'git://github.com/ttilley/rb-fsevent.git', :branch => 'pre-compiled-gem-one-off'
	#-----------------------------------------------------------------------------------------------------------
	gem 'growl', '1.0.3'
	gem 'guard-spork', '0.3.2'
	gem 'spork', '0.9.0'
end

group :production do
	gem 'pg', '0.12.2'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
