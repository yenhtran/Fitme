get '/workouts' do  
	@workouts = Workout.all 
	erb :workouts
end