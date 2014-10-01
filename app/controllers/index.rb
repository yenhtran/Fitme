get '/' do 
	if session[:user_id]
		user = User.find(session[:user_id])
		@message = "Welcome #{user.user_name}!"
	else
		@message = "Sign in or sign up!"
	end
	erb :index
end