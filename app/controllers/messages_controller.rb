class MessagesController < ApplicationController
    before_action :set_channel, only: [:new, :create]
  
    def new
      @message = @channel.messages.new
    end
  
    def create
      @message = @channel.messages.create!(message_params)
  
      redirect_to @channel
    end
  
    private
      def set_channel
        @channel = Channel.find(params[:channel_id])
      end
  
      def message_params
        params.require(:message).permit(:content)
      end
end