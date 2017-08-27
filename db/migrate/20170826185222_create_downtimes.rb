class CreateDowntimes < ActiveRecord::Migration[5.1]
  def change
    create_table :downtimes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end
