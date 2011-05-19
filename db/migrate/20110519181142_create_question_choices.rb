class CreateQuestionChoices < ActiveRecord::Migration
  def self.up
    create_table :question_choices do |t|
      t.integer :question_id
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :question_choices
  end
end
