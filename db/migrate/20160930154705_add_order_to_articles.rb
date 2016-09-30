class AddOrderToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :order, :integer
  end
end
