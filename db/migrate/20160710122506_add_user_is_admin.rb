class AddUserIsAdmin < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean, :presence => true, :default => false
  end
end
