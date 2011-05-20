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

  def update
  end

  def destroy
  end
end
