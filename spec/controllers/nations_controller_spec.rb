require 'rails_helper'

RSpec.describe NationsController, type: :controller do

  describe "GET #nationview" do
    it "returns http success" do
      get :nationview
      expect(response).to have_http_status(:success)
    end
  end

end
