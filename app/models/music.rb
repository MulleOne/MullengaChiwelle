class Music < ActiveRecord::Base
	has_one :image, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :image, allow_destroy: true

	validates :artist, :presence => true, uniqueness: true 
	validates :image, :presence => true # :description, is left out, it's not a must!
end
