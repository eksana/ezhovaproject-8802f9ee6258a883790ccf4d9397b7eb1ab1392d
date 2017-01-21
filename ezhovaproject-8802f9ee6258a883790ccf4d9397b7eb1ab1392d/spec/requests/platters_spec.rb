require 'rails_helper'

RSpec.describe "Platters", type: :request do
  describe "GET /platters" do
    it "works! (now write some real specs)" do
      get platters_path
      expect(response).to have_http_status(200)
    end
  end
end
