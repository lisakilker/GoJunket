class MessagesController < ApplicationController

  before_action :set_recipient, only: [:new, :create]

	def new
		@user = @recipient
		@message = @recipient.messages.new
	end

	def create
		new_params = message_params
		new_params[:times] = new_params[:times].to_i
		new_params[:activities] = new_params[:activities].to_i
		@message = Message.new(new_params)
		@message.sender_id = current_user.id
		@message.recipient_id = @recipient.id
		 if @message.save
      		flash[:success] = "Message sent!"
      		redirect_to users_path
    	else
      		flash[:failure] = "Oops, message did not send.  Please try again."
      		redirect_to root_path
    	end
    end

	def index
		@messages = current_user.messages
	end

	def destroy
		@message = current_user.messages.destroy params[:id]
	end

	def show
		@message = current_user.messages.find params[:id]
	end

	private

	def message_params
		params.require(:message).permit(:content, :times, :activities)
   	end

	def set_recipient
		@recipient = User.find params[:user_id]
	end
end