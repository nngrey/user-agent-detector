class UserAgentsController < ApplicationController

  def index
    @user_agents = UserAgent.all.order(:created_at)

    respond_to do |format|
      format.html
      format.js
    end
  end
end