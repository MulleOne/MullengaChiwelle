class MessagesController < ApplicationController
  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)

    @message.request = request
    if @message.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  	#if @message.valid?
  	#	MessageMailer.message_me(@message).deliver_now
  	#	redirect_to new_message_path, notice: "Thank you for your message!"
  	#else
    #  flash.now[:error] = 'Cannot send message.'
  	#	render :new
  	#end
  end

  private

  	def message_params
  		params.require(:message).permit(:name, :email, :subject, :message)
  	end

end
