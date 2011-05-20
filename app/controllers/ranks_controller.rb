class RanksController < ApplicationController
  def index
    @ranks = Rank.all
  end

  def new
    @rank = Rank.new
  end

  def create
    @rank = Rank.new(params[:rank])
    if @rank.save
      redirect_to(:action => 'index', :notice => 'Rank was successfully created.')
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end
end
