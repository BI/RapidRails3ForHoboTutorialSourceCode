class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text     :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :game_id
    end
    add_index :comments, [:user_id]
    add_index :comments, [:game_id]
  end

  def self.down
    drop_table :comments
  end
end
