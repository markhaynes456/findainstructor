module AuthHelper

  def get_user
    User.find_by(id:session[:findainstructor])
  end

  def logged_in?
    User.find_by(id:session[:findainstructor]).is_a?(User)
  end

end
