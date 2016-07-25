class Admin < ActiveRecord::Base
	has_one :image, as: :attachable, :dependent => :destroy
	accepts_nested_attributes_for :image, allow_destroy: true

	validates :first_name, :last_name, :presence => true, uniqueness: true 
	validates :message, :image, :presence => true
end
