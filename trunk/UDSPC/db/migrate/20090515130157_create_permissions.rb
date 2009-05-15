class CreatePermissions < ActiveRecord::Migration
  def self.up
    create_table :permissions do |t|
      t.integer :PermissionType
      t.string :Page
      t.string :Module
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :permissions
  end
end
