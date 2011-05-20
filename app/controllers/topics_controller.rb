class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      redirect_to(:action => 'index', :notice => 'Topic was successfully created.')
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end
end
