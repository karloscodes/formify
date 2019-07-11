# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "app"))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require "boot"

Bundler.require :default, ENV["RACK_ENV"]
require "dotenv/load"

require "api"
require "formify"
