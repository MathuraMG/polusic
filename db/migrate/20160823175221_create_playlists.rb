class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :author
      t.string :url

      t.timestamps null: false
    end
  end
end
