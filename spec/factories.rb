FactoryGirl.define do
  factory :album do
    name "cake_adventure"
    description "Images from Cake Adventure."
  end

  factory :photo do
    name "eggplant"
    picture File.open(File.join(Rails.root, '/public/character_eggplant.png'))
    album
  end
end