class Message # we not inheriting from this class no more < ActiveRecord::Base
	include ActiveModel::Model
	attr_accessor :name, :email, :subject, :content
	validates :name, :email, :subject, :content, presence: true
end
