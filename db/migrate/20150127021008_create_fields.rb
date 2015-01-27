class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.integer :type
      t.string :address
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :fields, :clubs
  end
end
