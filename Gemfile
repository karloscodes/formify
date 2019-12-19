# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.6.3"
gem "rack", "~> 2.0.8"
gem "rake", "~> 12.3.2"
gem "roda"
group :development, :test do
  gem "dotenv"
  gem "pry"
end

group :test do
  gem "rspec", "~> 3.8"

  gem "rack-test"
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
end

group :production do
  gem "puma"
end
