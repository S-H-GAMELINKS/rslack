class MessagesController < ApplicationController
    before_action :set_channel, only: [:new, :create]
  
    def new
      @message = @channel.messages.new
    end
  
    def create
      @message = @channel.messages.create!(message_params)
  
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @channel }
      end
    end
  
    private
      def set_channel
        @channel = Channel.find(params[:channel_id])
      end
  
      def message_params
        params.require(:message).permit(:content)
      end
end