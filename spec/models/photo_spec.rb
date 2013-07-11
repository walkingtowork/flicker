require 'spec_helper'

describe Photo do
  it "has a picture" do
    photo = FactoryGirl.create(:photo)

    expect(photo.picture).to_not be_nil
  end

  # it "belongs to an album" do
  #   album = FactoryGirl.create(:album)
  #   picture = Picture.create()
  #   album.pictures << picture
  #   expect(picture.album.id).to eql(album.id)
  #   expect(album.pictures).not_to be_empty
  #   expect(album.pictures).to include(picture)
  # end
end
