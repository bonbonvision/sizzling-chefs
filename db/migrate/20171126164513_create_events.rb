class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :number_of_people
      t.integer :chef_id
      t.integer :customer_id
      t.string :event_address
      t.string :special_request
      t.string :allergy
      t.timestamps
    end
  end
end
