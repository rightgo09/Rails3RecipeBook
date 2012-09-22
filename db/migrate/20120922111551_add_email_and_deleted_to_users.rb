class AddEmailAndDeletedToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :email, :string
    add_column :users, :deleted, :boolean
  end

  def self.down
    remove_column :users, :deleted
    remove_column :users, :email
  end
end
