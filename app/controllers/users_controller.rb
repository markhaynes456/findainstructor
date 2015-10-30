class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)  
    if @user.save
      redirect_to(:search,:notice=>"Account Created")
    else
      redirect_to(:new_user,:notice=>"Account Creation Failed")
    end
  end

  def destroy

  end

  def edit
    @user = User.find_by(id:params[:id])
  end

  def update

  end

  def show

  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password,:instructor)
  end

end
