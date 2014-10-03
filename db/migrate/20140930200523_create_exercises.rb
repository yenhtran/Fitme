class CreateExercises < ActiveRecord::Migration
  include Paperclip::Schema

  def change
  	create_table :exercises do |t|
  		t.string :name
  		t.text :description, :limit => nil
  		t.string :target_zone
  		t.string :intensity
      t.attachment :image
  		t.belongs_to :workout
  		t.timestamps
  	end
  end
end
