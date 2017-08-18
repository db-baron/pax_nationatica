class NationsController < ApplicationController
  def index
      @nations = Nation.all
    #   @messages = Message.includes(:user).order("created_at DESC").all
    #   @nations = Nation.includes(:user).order("created_at DESC").all
    # @nations = ["France", "Brasil", "Angola"]
  end

  def search
      @nations_list = Nation.find(params[:timeperiod])
    #   @nations_list = Nation.where(timeperiod: params[:timeperiod])
      if @nations_list
          render json: @nations_list
      else
        #   @message.errors.full_messages
          render text: "No nations found for that time and location"
      end
  end

  def display
    @

end
