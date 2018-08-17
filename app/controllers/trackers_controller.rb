class TrackersController < ApplicationController
  def index
  @trackers = Tracker.all
  @users = User.all
  end
  def new
    @trackers = Tracker.new
  end

  def timein
      @user= User.find(current_user.id)

      @tracker = Tracker.new(user_id: @user.id, loggin_in: Time.now )
      @tracker.save


    # redirect_to users_show
  end
  def timeout
    # @attend.loggin_out = Time.now
    # @attend.save
  end

  def create
    @tracker = Tracker.new(tracker_params)
    @tracker.save
    redirect_to trackers_show
  end

  def show
    @trackers
  end

  private
  def tracker_params
    params.require(:tracker).permit(:loggin_in, :loggin_out)
  end
end