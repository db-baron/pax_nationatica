class NationsController < ApplicationController
  def index
      @nations = Nation.all
    #   redirect_to " "
  end

  def show
end


@user = User.find_by(username: params[:username])
