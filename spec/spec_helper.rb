# frozen_string_literal: true

require "rack/test"

ENV["RACK_ENV"] = "test"

require File.expand_path("../config/environment", __dir__)

RSpec.configure do |config|
  config.mock_with :rspec
  config.expect_with :rspec
  config.raise_errors_for_deprecations!
  config.order = "random"
end
