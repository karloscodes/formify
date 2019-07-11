# frozen_string_literal: true

describe "Basket APIs" do
  include Rack::Test::Methods

  def app
    FormifyWeb::API
  end

  describe "POST /submitions" do
    it "accepts a submition as a html forms" do
      redirect_to = "http://some.url/"
      submition = {
        submition: {
          _redirect_to: redirect_to,
          _form_name: "my-form",
          _email: "me@example.com",
          name: "Jose",
          message: "this is a message",
        },
      }

      post "/submitions", submition
      expect(last_response.status).to eq(302)

      follow_redirect!

      expect(last_request.url).to eq(redirect_to)
    end

    it "accepts a submition as a json request" do
      submition = {
        submition: {
          _form_name: "my-form",
          _email: "me@example.com",
          name: "Jose",
          message: "this is a message",
        },
      }

      post "/submitions.json", submition.to_json
      expect(last_response.status).to eq(201)
    end
  end
end
