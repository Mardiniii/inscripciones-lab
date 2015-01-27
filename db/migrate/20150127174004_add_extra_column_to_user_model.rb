class AddExtraColumnToUserModel < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :identification_number, :string
  	add_column :users, :last_name, :string
  	add_column :users, :cellphone, :string
  end
end
