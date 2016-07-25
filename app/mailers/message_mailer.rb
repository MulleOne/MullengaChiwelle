class MessageMailer < ApplicationMailer

	default :to => "teamgrandgrind@gmail.com"
	def message_me(msg)
		@msg = msg

		mail from: @msg.email, subject: @msg.subject, body: @msg.content
	end
end
