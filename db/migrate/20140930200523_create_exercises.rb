class CreateExercises < ActiveRecord::Migration
  def change
  	create_table :exercises do |t|
  		t.string :name
  		t.text :description, :limit => nil
  		t.string :target_zone
  		t.string :intensity
  		t.belongs_to :workout
  		t.timestamps
  	end
  end
end
