class AttendanceController < ApplicationController
  def overview
    @trackers = Tracker.all
    @users = User.all
  end
end