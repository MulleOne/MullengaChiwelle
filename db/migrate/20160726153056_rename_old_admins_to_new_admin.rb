class RenameOldAdminsToNewAdmin < ActiveRecord::Migration
  def change
	rename_table :admins, :admin  
  end
end
