require 'rails_helper'

RSpec.describe "BigTimeEntries", type: :request do
  describe "GET /big_time_entries" do
    it "works! (now write some real specs)" do
      get big_time_entries_path
      expect(response).to have_http_status(200)
    end
  end
end
