# frozen_string_literal: true

require File.expand_path("config/environment", __dir__)

run FormifyWeb::API.freeze.app
