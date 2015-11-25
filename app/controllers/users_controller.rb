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
    @user = set_user
  end

  def update
    @user = set_user
    if @user.update!(user_params)
      redirect_to(:user, :notice=>"Profile has been saved")
    else
      redirect_to(:new_user, :notice=>"Error saving Profile")
    end
  end

  def show
    @user = set_user
  end

private

  def set_user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:instructor,:profile, :password)
  end

end
