class NationsController < ApplicationController
  def index
      @nations = Nation.all
    #   @messages = Message.includes(:user).order("created_at DESC").all
    #   @nations = Nation.includes(:user).order("created_at DESC").all
    # @nations = ["France", "Brasil", "Angola"]
  end

  def search
      @found_nations = Nation.find(params[:timeperiod])
    #   @found_nations = Nation.where(timeperiod: params[:timeperiod])
      if @found_nations
          render json: @found_nations
      else
        #   @message.errors.full_messages
          render text: "No nations found for that time and location"
      end

  end

end
