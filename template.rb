gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'font-awesome-sass'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'react-rails'

# bootstrap
gem 'bootstrap-sass'
gem 'autoprefixer-rails'

# form
gem 'simple_form'
gem 'cocoon'

# users
gem 'devise'
gem 'omniauth-facebook'
gem 'cancancan'

# file upload
gem 'carrierwave'

# image processor
gem 'mini_magick'

# paging
gem 'kaminari'
gem 'bootstrap-kaminari-views'

# configuration
gem 'figaro'

# server
gem 'puma'

gem_group :development, :test do
  gem 'sqlite3'
  gem 'pry-byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'hirb-unicode'
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'html2slim'
end

gem_group :test do
  gem 'minitest-reporters'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'guard'                   # test watcher
  gem 'guard-minitest'

  # fixture
  gem 'factory_girl_rails'
  gem 'faker'
end

gem_group :production do
  # gem 'pg'
end

run 'rm README.md'
run 'rm -rf test/'

after_bundle do
  git :init
  git add: '.'
  git commit: %Q{ -m 'Init.' }
end
