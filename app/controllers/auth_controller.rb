class AuthController < ApplicationController

  def sign_in
   @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user and @user.authenticate(user_params[:password])    
      log_in(@user)
      redirect_to(:search, :notice=>"Success: Logged in")
    else
      redirect_to(:login, :notice=>"Error: Wrong password or username, please try again")
    end
  end

  def destroy
    log_out
    redirect_to(:root)
  end

  def reset_password
    @user = User.new    
  end

  def edit
    @user = User.find_by(email:user_params[:email])
    if @user
      @user.password_reset
      redirect_to(:login,:notice=>"Email sent with password information")
    else
      redirect_to(:auth_reset_password,:notice=>"Invalid email address")
    end
  end

  def user_params
    params.require(:user).permit(:email,:password)
  end

private

  def log_in(user)
    session[:findainstructor] = user.id
  end

  def log_out
    session[:findainstructor] = nil
  end

end
