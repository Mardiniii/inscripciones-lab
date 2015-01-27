class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.references :user, index: true
      t.string :name
      t.string :address
      t.string :email
      t.string :municipality
      t.string :phone
      t.string :cellphone

      t.timestamps null: false
    end
    add_foreign_key :clubs, :users
  end
end
