get '/sessions/new' do 
	erb :sign_in
end

post '/sessions' do
	user = User.find_by(user_name: params[:user_name])
	password = user.password_hash
	if !user
		error_code = 1
		redirect "/sessions/error/#{error_code}"
	end

	if BCrypt::Password.new(password) == params[:password]
		session[:user_id] = user.id 
		redirect '/workouts'
	else
		p "encrypted: #{BCrypt::Password.new(user.password_hash)}"
		p "params: #{params[:password]}"
		error_code = 1
		redirect "/sessions/error/#{error_code}"
	end
end