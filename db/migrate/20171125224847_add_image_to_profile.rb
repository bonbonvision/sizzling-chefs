class AddImageToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :image_string, :string
  end
end
