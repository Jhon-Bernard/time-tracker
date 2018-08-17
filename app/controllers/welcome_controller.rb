class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      # redirect_to user_path(current_user)
    end
    @last_log = current_user.trackers.last

  end

  def attendance

  end
end
