get '/workouts' do  
	@workouts = Workout.all 
	erb :workouts
end

get '/workouts/new' do
	erb :create_workout
end

get '/workouts/:id' do
	@workout = Workout.find(params[:id])
	erb :workouts_id
end

post '/workouts' do
	@workout = Workout.create(name: params[:name])
	redirect "/workouts/#{@workout.id}"
end

delete '/workouts/:id/delete' do
	workout = Workout.find(params[:id])
	workout.destroy
	redirect '/workouts'
end