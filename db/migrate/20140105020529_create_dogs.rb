class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :needs
      t.integer :weight
      t.string :breed
      t.integer :age

      t.timestamps
    end
  end
end
