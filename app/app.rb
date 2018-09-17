# frozen_string_literal: true

require 'sinatra'

class App < Sinatra::Base
  get '/health' do
    :alive
  end

  post '/' do
    status :accepted
  end
end
