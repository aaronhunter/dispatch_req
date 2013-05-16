class Center < ActiveRecord::Base
  attr_accessible :name

  has_many :users, :requests
end
