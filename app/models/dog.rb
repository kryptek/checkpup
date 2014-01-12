class Dog < ActiveRecord::Base
  has_many :owners
  attr_accessible :age, :breed, :name, :needs, :weight
  belongs_to :user
end
