class UsersController < ApplicationController
  def show
    @user = current_user
    @polls = current_user.polls
  end
  #
  # def show
  #   @user = User.includes(:vote_options).find_by_id(params[:id])
  # end
end
