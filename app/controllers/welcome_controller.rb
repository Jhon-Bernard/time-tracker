class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      # redirect_to user_path(current_user)
      @last_log = current_user.trackers.last
    end


  end

  def attendance

  end
end
