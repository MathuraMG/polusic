class AddDetailsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
    add_column :articles, :cover_image, :string
    add_column :articles, :blurb, :text
  end
end
