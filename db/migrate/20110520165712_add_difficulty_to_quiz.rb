class AddDifficultyToQuiz < ActiveRecord::Migration
  def self.up
    add_column :quizzes, :difficulty_id, :integer
  end

  def self.down
    remove_column :quizzes, :difficulty_id
  end
end
