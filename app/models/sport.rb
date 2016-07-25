class Sport < ActiveRecord::Base
	has_one :image, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :image, allow_destroy: true

	validates :name, :presence => true, uniqueness: true 
	validates :description, :image, :presence => true
end
