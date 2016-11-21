class AddEditionToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :edition, :integer  
  end
end
