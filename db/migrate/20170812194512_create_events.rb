class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :customer_id
      t.integer :chef_id
      t.datetime :date
      t.timestamps 
    end

    add_index :events, :customer_id
    add_index :events, :chef_id
  end
end
