require 'rails_helper'

RSpec.describe LogsController, type: :controller do
  

   describe "logs#index action" do
    it "should successfully show the page" do
      user = FactoryBot.create(:user)
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "logs#new action" do
    it "should successfully show the new form" do
      user = FactoryBot.create(:user)
      sign_in user
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "logs#create action" do
    it "should successfully create a new log in the database" do
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { log: {  date: Date.today , workout: "chest", mood: "tired", length: "45 minutes" } }
      expect(response).to redirect_to log_path(Log.last)
      log = Log.last
      expect(log.workout).to eq("chest")
    end

  
  end

  describe "logs#edit action" do
    it "should show the edit form for a log" do
      #log = FactoryBot.create(:log)
      #log = Log.create( date: Date.today , workout: "chest", mood: "tired", length: "45 minutes" )
      user = FactoryBot.create(:user)
       log = user.logs.create( date: Date.today , workout: "chest", mood: "tired", length: "45 minutes" )

      sign_in user
      get :edit, params: { id: log.id}
      expect(response).to have_http_status(:success)
    end
  end


end
