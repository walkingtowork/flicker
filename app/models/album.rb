class Album < ActiveRecord::Base
  has_many :photos

  attr_accessible :name, :description
end
