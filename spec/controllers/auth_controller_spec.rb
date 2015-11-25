require 'rails_helper'

RSpec.describe AuthController, type: :controller do

  before(:all) do
    @user = User.new(:email=>"markhaynes456@gmail.com",:password=>"password",:first_name=>"Mark",:last_name=>"Haynes")
    @user.save
  end

  it("#Login") do
    get :sign_in
    expect(response).to(have_http_status(:success)) 
  end

  it("#Create Login Success should redirect to search") do
    post :create, :user=>{:email=>"markhaynes456@gmail.com",:password=>"password"}
    expect(response).to(redirect_to(:search))
  end

  it("#Create Login Failure username/password should redirect to sign_in") do
    post :create, :user=>{:email=>"markhaynes456i7@gmail.com",:password=>"password"}
    expect(response).to(redirect_to(:login))
  end

  it("#GET Reset_Password view") do
    get :reset_password
    expect(response).to(have_http_status(200))
  end
 
  it("#Post Reset password ") do
    post :edit, :user =>{:email=>"markhaynes456@gmail.com"}
    expect(response).to(redirect_to(:login))
  end

end
