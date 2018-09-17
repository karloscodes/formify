# frozen_string_literal: true

require_relative './acceptance_helper.rb'

describe 'Post data processing' do
  it 'accepts a post' do
    post '/', params: { name: 'Foo', email: 'bar@example.com' }
    assert_equal 202, last_response.status
  end
end
