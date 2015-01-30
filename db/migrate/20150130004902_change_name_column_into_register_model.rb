class ChangeNameColumnIntoRegisterModel < ActiveRecord::Migration
  def change
  	rename_column :registers, :registration_id, :inscription_id
  end
end
