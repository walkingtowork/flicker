class Photo < ActiveRecord::Base
  belongs_to :album

  attr_accessible :name, :image_url

  mount_uploader :image_url, ImageUploader
end
