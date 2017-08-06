class NationsController < ApplicationController
  def index
      @nations = Nation.all
    #   @messages = Message.includes(:user).order("created_at DESC").all
    #   @nations = Nation.includes(:user).order("created_at DESC").all
    # @nations = ["France", "Brasil", "Angola"]
  end

  def search
      @found_nations = Nation.where(timeperiod: params[:timeperiod])
      if @found_nations
          redirect_to "/index"
      else
        #   @message.errors.full_messages
          render text: "No nations found for that time and location"
      end

  end

end


@user = User.find_by(username: params[:username])
