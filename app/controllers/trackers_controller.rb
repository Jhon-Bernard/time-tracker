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


      @tracker = Tracker.new(user_id: @user.id, loggin_in: Time.now - 4.hours )
      @tracker.save

     redirect_to trackers_userlog_path
      end
  def timeout
    @last_log = current_user.trackers.last
    if @last_log.loggin_in != nil || @last_log.loggin_out == nil
      @last_log.update(loggin_out: Time.now - 4.hours)
      @last_log.save
    end
    redirect_to trackers_userlog_path
  end

  def create
    @tracker = Tracker.new(tracker_params)
    @tracker.save
    redirect_to trackers_show
  end

  def update

  end

  def show
    @trackers = current_user.trackers

  end

  private
  def tracker_params
    params.require(:tracker).permit(:loggin_in, :loggin_out)
  end
end