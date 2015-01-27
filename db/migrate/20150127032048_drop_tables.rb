class DropTables < ActiveRecord::Migration
  def change
  	drop_table :register_types
  end
end
