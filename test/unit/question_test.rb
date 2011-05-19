require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "requires text" do
    question = Question.new(:text => nil)
    assert !question.valid?
  end
end
