class HoboMigration5 < ActiveRecord::Migration
  def self.up
    rename_column :recipes, :name, :title
  end

  def self.down
    rename_column :recipes, :title, :name
  end
end
