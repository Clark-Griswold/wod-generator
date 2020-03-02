require 'rails_helper'

RSpec.describe WodsController, type: :controller do
  describe "wods#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end


 
  

end
