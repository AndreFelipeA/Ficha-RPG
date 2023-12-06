class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.text :history
      t.string :city
      t.string :race
      t.string :characteristics
      t.references :character, null: false, foreign_key: true
      t.timestamps
    end
  end
end
