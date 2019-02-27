class UserAgentsController < ApplicationController

  def index
    @user_agents = UserAgent.all

    respond_to do |format|
      format.html
      format.js
    end
  end
end