get '/users/new' do 
	erb :sign_up
end

post '/users' do
	user = User.new
	user.user_name = params[:user_name]
	user.password_hash = BCrypt::Password.create(params[:password])
	user.created_at = Time.now
	user.update_at = Time.now
end