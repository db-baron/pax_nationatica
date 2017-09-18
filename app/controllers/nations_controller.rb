class NationsController < ApplicationController
  def index
      @nations = Nation.all
    #   @messages = Message.includes(:user).order("created_at DESC").all
    #   @nations = Nation.includes(:user).order("created_at DESC").all
  end

  def dropdown_search
      @nations_found = Nation.where(continent: params[:continent_search], timeperiod: params[:timeperiod_search])
      if @nations_found
          # render json: @nations_found.empire
      else
          render text: "Sorry, no nations found for that time and location, check back soon."
      end
      # Iteration handling for multiple nations found
      if @nations_found.respond_to?(:each)
      # Single handling for only one nation found
      else
        @single_nation = @nations_found
      end
  end

  def show_nation
      @selected_nation = Nation.find_by(nation_name: params[:nation_name])
  end

end
