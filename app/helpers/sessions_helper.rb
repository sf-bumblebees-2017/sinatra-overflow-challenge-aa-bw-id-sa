helpers do 

  def login(user)
    sessions[:id] = @users.id
  end 

  def current_user
    @user ||= @user.find(session[:id]) if sessions[:id]
  end

  def logged_in?
    !!current_user
  end 

  def logout
    sessions[:id] = nil
  end

end 