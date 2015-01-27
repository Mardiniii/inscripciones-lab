class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.references :register_type, index: true
      t.references :registration, index: true
      t.string :first_name
      t.string :second_name
      t.string :first_last_name
      t.string :second_last_name
      t.date :date_of_birth
      t.string :eps
      t.string :email

      t.timestamps null: false
    end
    add_foreign_key :registers, :register_types
    add_foreign_key :registers, :registrations
  end
end
