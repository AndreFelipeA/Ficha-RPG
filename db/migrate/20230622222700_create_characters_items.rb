class CreateCharactersItems < ActiveRecord::Migration[7.0]
  def change
    create_table :characters_items, :id => false do |t|
      t.integer :character_id
      t.integer :item_id
    end
  end
end
