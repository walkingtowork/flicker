require 'spec_helper'

describe Album do
  it "has many photos" do
    # album = FactoryGirl.create(:album)
    photo = FactoryGirl.create(:photo)

    expect(Album.last.photos).to include(photo)
  end
end