class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @last_log = current_user.trackers.last
  end
  def index
    # @attend= Tracker.new(user_id: current_user.id, loggin_in: @login, loggin_out: @logout)
    # if @login != nil && @logout != nil
    #   @attend.save
    # end
    @users = User.all
    @trackers = Tracker.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def userlog
    @user = User.find_by(id: current_user.id)
    @last_log = current_user.trackers.last


  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      bypass_sign_in @user
      flash[:success] = "Your account was updated successfully"
      redirect_to user_path
    else
      render 'edit'
    end
  end
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end
