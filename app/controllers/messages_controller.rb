class MessagesController < ApplicationController
  before_action :set_message, only: [:update, :destroy]

  def create
  	message = Message.new(message_params)
    jarvis_response = 1
  	if message.save!      
  		if message.content.downcase.include? "jarvis" and !(message.content.downcase.include? ("how are you")) and !(message.content.downcase.split(" ").any? { |i| ["book", "appointment"].include? i })
  			Message.create(content: "Yes Sir!!!", jarvis: true)
        jarvis_response = 2
  		end
  		if message.content.downcase.include? "how are you" and !(message.content.downcase.split(" ").any? { |i| ["book", "appointment"].include? i })
  		 	Message.create(content: "I am fine sir!!! How are you?", jarvis: true)
        jarvis_response = 2
  		end
  		if message.content.downcase.split(" ").any? { |i| ["book", "appointment"].include? i }
  			Message.create(content: "Sure Sir!!! Booking Confirmed.", jarvis: true)
        jarvis_response = 2
  		end
      @messages = Message.last(jarvis_response)
      respond_to do |format|
        format.js
      end   	
  	else
    	redirect_to :chat_rooms, notice: 'Message not saved!!!.'
  	end
  end

  def update
  end

  def destroy
  end

  def destroy_all
  	Message.delete_all
	  redirect_to :chat_rooms
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:content, :jarvis)
    end
end
