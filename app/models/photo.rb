class Photo < ActiveRecord::Base

	has_attached_file :image, :styles => { :large => "700x700!",:medium => "300x300!", :thumb => "100x100>" }
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	belongs_to :inventory


end
