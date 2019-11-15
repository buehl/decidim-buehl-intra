# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

# Uncomment this in order to install from master branch
#DECIDIM_VERSION = { git: "https://github.com/decidim/decidim", branch: "master" }

gem "decidim", "0.19.0"
# gem "decidim-consultations", "0.18.0"
# gem "decidim-initiatives", "0.18.0"

gem "ransack", "~> 2.1.1"

gem "bootsnap"
gem "uglifier", ">= 1.3.0"
gem "faker", "~> 1.8.4"
gem "deface"
gem "progressbar"
gem "puma"
gem "origami"
gem "figaro"

# Secure decidim with a password until all requirements are met
gem "lockup"

gem "rails_admin"
gem "rails_admin-i18n"

gem "gitlab_omniauth-ldap"

group :development, :test do
  gem "byebug", platform: :mri
  gem "decidim-dev", "0.19.0"
  gem "rspec-rails"
end

group :development do
  gem "letter_opener_web", "~> 1.3.0"
  gem "listen", "~> 3.1.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

group :production do
  gem "sidekiq"
  gem "whenever"
  gem "daemons"
  gem "lograge"
end
