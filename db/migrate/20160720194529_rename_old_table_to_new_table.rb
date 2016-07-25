class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
	rename_table :musics, :music  
  end
end
