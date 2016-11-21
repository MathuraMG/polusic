class AddEditionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :edition, :integer  
  end
end
