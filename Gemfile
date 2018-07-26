source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.6"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "font-awesome-rails"
gem "omniauth"
gem "omniauth-google-oauth2"
gem "omniauth-facebook"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "i18n-js"
gem "will_paginate", "3.1.0"
gem "bootstrap-sass", "3.3.6"
gem "bcrypt", "3.1.7"
gem "config"
gem "faker", "1.4.2"
gem "rubocop", "~> 0.49.1", require: false
gem "bootstrap-will_paginate", "0.0.10"
gem "mysql2", ">= 0.3.18", "< 0.5"
gem "sass-rails", "~> 5.0"
gem "jquery-rails"
gem "bootstrap-glyphicons"
gem "simple_form"
gem "devise"
gem "cancancan"
gem "jquery-easing-rails"
gem "jquery-countdown-rails"
gem "figaro"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
