# frozen_string_literal: true

require_relative './acceptance_helper.rb'

describe 'Application health' do
  it 'returns a 2xx status code' do
    get '/health'
    assert_equal 200, last_response.status
  end
end
