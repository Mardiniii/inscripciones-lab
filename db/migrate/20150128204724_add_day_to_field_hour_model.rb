class AddDayToFieldHourModel < ActiveRecord::Migration
  def change
  	add_column :field_hours, :day, :integer
  	remove_column :registrations, :categorie_id
  end
end
