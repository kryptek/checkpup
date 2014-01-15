class Dog < ActiveRecord::Base
  has_many :owners
  attr_accessible :age, :breed, :name, :needs, :weight
  belongs_to :user

  validates :name, length: { minimum: 5 }, presence: true
  validates :needs, length: { minimum: 20 }, presence: true
  validates :breed, length: { minimum: 5 }, presence: true
end
