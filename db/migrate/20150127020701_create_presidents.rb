class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :name
      t.integer :identification
      t.string :phone
      t.string :fax
      t.string :cellphone
      t.string :email
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :presidents, :clubs
  end
end
