helpers do

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def give_cookie(user_id)
  	session[:user_id] = user_id
  end

  def delete_cookie(user)
  	session[:user_id] = nil
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user.password=(params[:password]) == params[:password]
      puts @user.password
      puts params[:password]
      session[:user_id] = @user.id
      redirect '/'
    else
      redirect '/sessions/new'
    end
  end

  def get_current_user
    User.find(session[:user_id])
  end
end