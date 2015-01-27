class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :cellphone
      t.string :phone
      t.string :email
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :managers, :clubs
  end
end
