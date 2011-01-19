class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :courts do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :comments, :court_id, :integer

    add_index :comments, [:court_id]
  end

  def self.down
    remove_column :comments, :court_id

    drop_table :courts

    remove_index :comments, :name => :index_comments_on_court_id rescue ActiveRecord::StatementInvalid
  end
end
