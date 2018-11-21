class PollsController < ApplicationController

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      flash[:notice] = "Page created successfully."
      redirect_to root_path
      # redirect_to(pages_path(:subject_id => @subject.id))
    else
      render('new')
    end
  end
end
