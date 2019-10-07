# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

gem "decidim", "0.18.0"
# gem "decidim-consultations", "0.18.0"
# gem "decidim-initiatives", "0.18.0"

gem "ransack", "~> 2.1.1"

gem "bootsnap"
gem "uglifier"
gem "lograge"
gem "faker"
gem "deface"
gem "progressbar"
gem "puma"
gem "origami"
gem "figaro"

# Secure decidim with a password until all requirements are met
gem "lockup"

gem "gitlab_omniauth-ldap"

group :development, :test do
  gem "byebug", "~> 10.0", platform: :mri
  gem "decidim-dev", "0.18.0"
end

group :development do
  gem "letter_opener_web", "~> 1.3"
  gem "listen", "~> 3.1"
  gem "spring", "~> 2.0"
  gem "spring-watcher-listen", "~> 2.0"
  gem "web-console", "~> 3.5"
end

group :production do
  gem "sidekiq"
  gem "whenever"
  gem "daemons"
end
