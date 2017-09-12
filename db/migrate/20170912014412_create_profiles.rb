class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :subtitle
      t.text :bio
      t.string :city, index: true
      t.string :state, index: true
      t.string :favorite_dish
      t.string :inspiration
      t.integer :chef_id, index: true
      t.timestamps
    end
  end
end
