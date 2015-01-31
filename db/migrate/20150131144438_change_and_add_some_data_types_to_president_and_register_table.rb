class ChangeAndAddSomeDataTypesToPresidentAndRegisterTable < ActiveRecord::Migration
  def change
  	change_column :presidents, :identification, :string
  	add_column :registers, :identification, :string
  	add_column :managers, :identification, :string
  end
end
