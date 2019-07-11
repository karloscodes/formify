# frozen_string_literal: true

require "roda"
require "formify"

module FormifyWeb
  class API < Roda
    plugin :json, content_type: "application/json"
    plugin :type_routing
    plugin :symbol_status
    mailer

    route do |r|
      # GET / request
      r.root do
        { version: Formify::VERSION }
      end

      r.post "submitions" do
        r.html do
          r.redirect r.params.dig("submition", "_redirect_to")
        end

        r.json do
          response["Content-Type"] = "application/json"
          response.status = :created
          
          r.params
        end
      end
    end
  end
end
