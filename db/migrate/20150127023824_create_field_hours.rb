class CreateFieldHours < ActiveRecord::Migration
  def change
    create_table :field_hours do |t|
      t.time :open_hour
      t.time :closing_time
      t.references :field, index: true

      t.timestamps null: false
    end
    add_foreign_key :field_hours, :fields
  end
end
