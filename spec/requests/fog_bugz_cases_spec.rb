require 'rails_helper'

RSpec.describe "FogBugzCases", type: :request do
  describe "GET /fog_bugz_cases" do
    it "works! (now write some real specs)" do
      get fog_bugz_cases_path
      expect(response).to have_http_status(200)
    end
  end
end
