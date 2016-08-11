class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end

  def new
    @poll = Poll.new
  end

  private

  def poll_params
    params.require(:poll).permit(:topic)
  end
end
