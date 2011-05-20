class AddTopicIdToQuizzes < ActiveRecord::Migration
  def self.up
    add_column :quizzes, :topic_id, :integer
  end

  def self.down
    remove_column :quizzes, :topic_id
  end
end
