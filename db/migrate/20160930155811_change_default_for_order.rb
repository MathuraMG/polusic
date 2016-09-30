class ChangeDefaultForOrder < ActiveRecord::Migration
  def change
    change_column :articles, :order, :integer, :default => 0
  end
end
