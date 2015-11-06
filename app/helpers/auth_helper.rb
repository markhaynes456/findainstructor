module AuthHelper

  def get_user
    User.find_by(id:session[:findainstructor])
  end

  def logged_in?
    User.find_by(id:session[:findainstructor]).is_a?(User)
  end

  def is_instructor? 
    get_user.instructor
  end

  def user_id
    session[:findainstructor]
  end

end
