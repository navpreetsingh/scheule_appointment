class ChatRoomsController < ApplicationController
  def index
  	@messages = Message.last(10)
  	@message = Message.new
  end
end
