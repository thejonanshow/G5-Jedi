class Question < ActiveRecord::Base
  validates_presence_of :text
  validates_uniqueness_of :text
  belongs_to :quiz
  has_many :question_choices
  accepts_nested_attributes_for :question_choices
end
