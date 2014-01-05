class Owner < ActiveRecord::Base
  belongs_to :dog
  attr_accessible :email, :name, :phone
end
