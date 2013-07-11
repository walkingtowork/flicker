class RenamePictureField < ActiveRecord::Migration
  def change
    rename_column :photos, :picture, :image_url
  end
end
