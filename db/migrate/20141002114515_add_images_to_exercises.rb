

class AddImagesToExercises < ActiveRecord::Migration
	include Paperclip::Schema

  def change
  	add_attachment :exercises, :image
  end
end
