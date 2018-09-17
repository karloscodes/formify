# frozen_string_literal: true

ENV['RACK_ENV'] = 'test'

require_relative './test_helper.rb'
require_relative '../app/app.rb'

require 'rack/test'

require 'capybara'
require 'capybara/dsl'

Capybara.app = App
Capybara.default_driver = :rack

class MiniTest::Spec
  include Capybara::DSL
  include Rack::Test::Methods

  def app
    App.new
  end
end

class Capybara::Session
  def params
    Hash[*URI.parse(current_url).query.split(/\?|=|&/)]
  end
end
