class Message < MailForm::Base # we not inheriting from this class no more < ActiveRecord::Base
	attribute :name,     :validate => true
	attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :subject,  :validate => true
	attribute :message,  :validate => true
	attribute :nickname, :captcha => true
	
	def headers 
		{
			:subject => "Message Form",
			:to => "mullengachiwelle@ymail.com",
			:from => %("#{name}" <#{email}>)
		}
	end
	#include ActiveModel::Model
	#attr_accessor :name, :email, :subject, :message
	#validates :name, :email, :subject, :message, presence: true
end
