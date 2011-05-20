class QuestionsController < InheritedResources::Base
  belongs_to :quiz

  def index
    if params[:quiz_id]
      @questions = Quiz.find(params[:quiz_id]).questions
    else
      @questions = Question.all
    end
  end

  def new
    @question = Question.new
    @quizzes = Quiz.all
    @difficulties = Difficulty.all
    4.times {@question.question_choices.build}
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to "/quizzes/#{@question.quiz_id}/questions/new", :notice => "Question '#{@question.text}' successfully created"
    else
      redirect_to :action => 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
    @quizzes = Quiz.all
    @difficulties = Difficulty.all
    params[:difficulty_id] = @question.difficulty.id
    params[:quiz_id] = @question.quiz.id
  end

  def update
    @question = Question.find(params[:id])
    @question.attributes = params[:question]
    @question.save
    redirect_to :action => 'index'
  end

  def destroy
  end
end
