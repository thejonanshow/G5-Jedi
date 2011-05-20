class Topic < ActiveRecord::Base
  belongs_to :rank
  has_many :quizzes
end
