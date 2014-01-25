class Dog < ActiveRecord::Base
  has_many :owners, dependent: :destroy
  attr_accessible :age, :breed, :name, :needs, :weight, :dogimage 
  belongs_to :user
  mount_uploader :dogimage, ImageUploader 

  validates :name, length: { minimum: 5 }, presence: true
  validates :needs, length: { minimum: 20 }, presence: true
  validates :breed, length: { minimum: 5 }, presence: true
end
