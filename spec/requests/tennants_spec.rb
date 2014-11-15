require 'rails_helper'

RSpec.describe "Tennants", :type => :request do
  describe "GET /tennants" do
    it "works! (now write some real specs)" do
      get tennants_path
      expect(response).to have_http_status(200)
    end
  end
end
