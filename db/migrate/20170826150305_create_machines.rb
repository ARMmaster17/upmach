class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.text :manufacturer
      t.text :model
      t.text :name

      t.timestamps
    end
  end
end
