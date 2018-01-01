source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'bcrypt'
gem 'warden'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'erubis'
gem 'bourbon', '~> 4.2', '>= 4.2.6'
gem 'neat', '~> 2.1'
gem 'font-awesome-sass', '~> 4.7.0'
gem "paperclip"
gem 'geocoder'
gem 'kaminari'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.14.0'
  gem 'selenium-webdriver'
  gem 'capybara-selenium'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails', '~>4.7'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
