class Exercise < ActiveRecord::Base
	include Paperclip::Glue

  belongs_to :workout
  # attr_accessible :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "../../public/images/exercises/pushup-action.gif"

end
