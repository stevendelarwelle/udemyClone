source 'https://rubygems.org'

ruby "2.2.2"
gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'normalize-rails'
gem 'bootstrap-sass', '~> 3.3.4'
gem "font-awesome-rails"
gem 'simple_form'
gem 'devise'
gem 'toastr-rails' # for notice and alerts
gem "rails_admin", github: "sferik/rails_admin", ref: "43f368a" # for admin console
gem "wysiwyg-rails" # for rich text editor in admin panel
gem 'gravatarify', '~> 3.0.0'
gem "pundit" # for authorizations to sales
gem "auto_html" # for comments link detection
gem "braintree" # for payments
gem "gon" # for braintree js getting client token
gem 'modernizr-rails' # for braintree js
gem 'omniauth' # for social networks login
gem 'omniauth-google-oauth2' # for google+ integration
gem 'omniauth-facebook' # for fb integration
gem 'omniauth-github' # for github integration
gem 'mandrill-api', '1.0.52', require: 'mandrill' # for mandrill
gem 'gibbon' # for mailchimp
gem 'friendly_id' # for nice links
gem 'paperclip'
gem 'fog'
gem 'puma'
gem 'execjs'
gem 'therubyracer'
gem 'dotenv-rails' # for env files

group :development, :test do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'sqlite3'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'

end
group :production do
  gem 'pg'
end

