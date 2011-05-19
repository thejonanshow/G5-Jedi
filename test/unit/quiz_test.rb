require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  test "requires a title" do
    quiz = Quiz.new(:title => nil)
    assert !quiz.valid?
  end
end
