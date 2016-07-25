class Movie < ActiveRecord::Base
	has_one :image, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :image, allow_destroy: true

	validates :tittle, :presence => true, uniqueness: true 
	validates :image, :presence => true
end
