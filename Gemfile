source 'https://ruby.taobao.org'

gem 'libv8', '3.16.14.3'
gem 'rails', '3.2.19'
# gem 'locomotive_cms', '~> 2.5.6', :require => 'locomotive/engine'
gem 'locomotive_cms', github: 'hw676018683/engine', branch: 'v2.5.x'
# gem 'locomotive_cms', :path => "../../engine" 

group :assets do
  gem 'compass',        '~> 0.12.7'
  gem 'compass-rails',  '~> 2.0.0'
  gem 'sass-rails',     '~> 3.2.6'
  gem 'coffee-rails',   '~> 3.2.2'
  gem 'uglifier',       '~> 2.5.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'turbo-sprockets-rails3'
end

gem 'locomotivecms_liquid_extensions', github: 'locomotivecms/liquid_extensions', branch: 'hosting'

group :development do
  gem 'pry'
  gem 'pry-byebug'

  gem "better_errors"
  gem "binding_of_caller"
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rvm'
end