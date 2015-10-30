require 'rails_helper'

RSpec.describe User, type: :model do

  describe("Should make a valid user") do

    it("Core fields filled in") do
      @user = User.new(first_name:"mark",last_name:"haynes",email:"markhaynes456@gmail.com",password:"password")
      expect(@user.valid?).to(be(true))
    end

  end
 

  describe("Should make a invalid user") do

    it("Missing first name") do
      @user = User.new(last_name:"haynes",email:"markhaynes456@gmail.com",password:"password")
      expect(@user.valid?).to(be(false))
    end

    it("Missing last name") do
      @user = User.new(first_name:"mark",email:"markhaynes456@gmail.com",password:"password")
      expect(@user.valid?).to(be(false))
    end

    it("Missing email") do
      @user = User.new(first_name:"mark",last_name:"haynes",password:"password")
      expect(@user.valid?).to(be(false))
    end
    
    it("Missing password") do
      @user = User.new(first_name:"mark",last_name:"haynes",email:"markhaynes456@gmail.com")
      expect(@user.valid?).to(be(false))
    end

  end

  describe("password reset") do 
    
    it("Should reset password") do 
      @user = User.new(first_name:"mark",last_name:"haynes",email:"markhaynes456@gmail.com",password:"password")
      @user.password_reset
      expect(@user.password).to_not(eq("password"))
    end

  end
 
end
