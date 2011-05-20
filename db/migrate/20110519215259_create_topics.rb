class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :name
      t.string :description
      t.integer :rank_id
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
