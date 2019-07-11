# frozen_string_literal: true

describe "Basket APIs" do
  include Rack::Test::Methods

  def app
    FormifyWeb::API
  end

  describe "GET /" do
    it "returns the api version" do
      get "/"

      parsed_response = JSON.parse(last_response.body)

      expect(last_response.status).to eq 200
      expect(parsed_response).to include("version" => anything)
    end
  end
end
