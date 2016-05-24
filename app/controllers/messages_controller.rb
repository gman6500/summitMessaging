class MessagesController < ApplicationController
    def index
        @messages=Message.all.sort().reverse!
    end
    def new
        
        @messages = Message.new
    end
    def create
        @message= Message.new(message_params)
        
        if @message.save
            redirect_to '/messages'
        else
            render 'new'
        end
        
    end
    private
        def message_params
            params.require(:message).permit(:content,:person)
        end
end
