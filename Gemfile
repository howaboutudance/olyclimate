source 'https://rubygems.org'

gem 'rails', '~> 4.0'
gem 'rack' , '1.5.2'
gem 'bootstrap-sass'
#make sure is ~> 0.9.6 for openshift
gem 'rake', '~> 0.9.6'
gem 'sass-rails', '~> 5.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

#mailgun
gem 'mailgun'
#google
gem 'google-api-client', '~> 0.8.6'
gem 'omniauth-google-oauth2'

#testing
group :development, :test do
  gem 'sqlite3'
  gem 'minitest'
  gem 'thor'
	gem 'minitest-reporters'
	gem 'mini_backtrace'
	gem 'guard-minitest'
	gem 'guard'
	gem 'debugger'
	gem 'spring'
end


#explictely adding ansi to make sure it work
#
gem 'ansi', '~> 1.5.0'
### OpenShift Online changes:

# important to keep in mind
# $ rhc env set BUNDLE_WITHOUT="development test"

group :production, :postgresql do
  gem 'pg'
end

### / OpenShift changes

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# bundle exec rake doc:rails generates the API under doc/api.

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

