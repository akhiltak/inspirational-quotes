require 'rails_helper'

RSpec.describe "Quotes", type: :request do
  describe "GET /quotes" do
    it "works! (now write some real specs)" do
      get quotes_path
      expect(response).to have_http_status(200)
    end
  end
end
