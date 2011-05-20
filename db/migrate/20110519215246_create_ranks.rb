class CreateRanks < ActiveRecord::Migration
  def self.up
    create_table :ranks do |t|
      t.string :name
      t.string :description
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :ranks
  end
end
