class AddDogImageToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :dogimage, :string
  end
end
