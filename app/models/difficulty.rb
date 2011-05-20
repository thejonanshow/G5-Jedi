class Difficulty < ActiveRecord::Base
  has_many :quizzes
  has_many :questions
end
