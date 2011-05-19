class QuestionChoice < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :question_id
end
