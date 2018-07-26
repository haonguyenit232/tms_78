source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.6"
gem "mysql2", ">= 0.3.18", "< 0.5"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "bootstrap-sass", "3.3.6"
gem "jquery-datatables-rails", "~> 3.4.0"
gem "owlcarousel-rails"
gem "font-awesome-rails"
gem "wow-rails"
gem "animate-rails"
gem "uglifier", ">= 1.3.0"
gem "faker", "1.4.2"
gem "coffee-rails", "~> 4.2"
gem "rails-assets-growl"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "config"
gem "devise"
gem "cancancan", "1.10"
gem "carrierwave"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "momentjs-rails"
gem "bootstrap-daterangepicker-rails"
gem "paranoia"
gem "rubocop", "~> 0.49.1", require: false

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
