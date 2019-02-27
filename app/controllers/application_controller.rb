class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :find_or_create_user_agent

  def find_or_create_user_agent
    unless request.xhr?
      user_agent_name = request.user_agent
      user_agent = UserAgent.find_or_create_by(name: user_agent_name) if user_agent_name
      increment = user_agent.counter + 1
      user_agent.update(counter: increment)
    end
  end
end
