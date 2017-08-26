class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.text :manufacturer
      t.text :model
      t.text :name
      t.references :machine, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
