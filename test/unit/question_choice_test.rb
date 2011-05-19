require 'test_helper'

class QuestionChoiceTest < ActiveSupport::TestCase
  test "belongs to a question" do
    choice = QuestionChoice.new(:question_id => nil)
    assert !choice.valid?
  end
end
