class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
    @quizzes = Quiz.all
    @question = Question.new
    @topics = Topic.all
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    if @quiz.save
      redirect_to(:action => 'index', :notice => 'Quiz was successfully created.')
    else
      render :action => 'new'
    end
  end

  def update
  end

  def destroy
  end
end
