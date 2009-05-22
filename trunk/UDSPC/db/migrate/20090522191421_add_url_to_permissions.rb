class AddUrlToPermissions < ActiveRecord::Migration
  def self.up
    add_column :permissions, :url, :string
  end

  def self.down
    remove_column :permissions, :url
  end
end
