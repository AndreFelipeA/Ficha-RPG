class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :classe
      t.integer :str
      t.integer :dex
      t.integer :int
      t.integer :con
      t.integer :wis
      t.integer :cha
      t.timestamps
    end
  end
end
