class AddTablesToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :name, :string
    add_column :photos, :picture, :string
    add_column :photos, :album_id, :integer
  end
end
