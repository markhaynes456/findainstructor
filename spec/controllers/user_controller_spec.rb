require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before(:all) do
    @user = User.create(:first_name=>"mark",:last_name=>"haynes",:email=>"markhaynes456@gmail.com",:password=>"carman")
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit,id:@user
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET #show" do
    it "returns http success" do
      get :show, id: @user
      expect(response).to have_http_status(:success)
    end
  end

  describe "#GET reset password"

end
