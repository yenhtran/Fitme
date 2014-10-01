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

post '/workouts/:id/create_exercise' do
  @workout = Workout.find params[:id]
  Exercise.create(name: params[:name], description: params[:description], target_zone: params[:target_zone], intensity: params[:intensity], workout_id: params[:workout_id])
  redirect "/workouts/#{@workout.id}"
end