class RemoveImageStringFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :image_string, :string
  end
end
