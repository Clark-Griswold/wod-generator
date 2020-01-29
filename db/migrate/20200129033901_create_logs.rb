class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.datetime :date
      t.string :workout
      t.string :mood
      t.string :length

      t.timestamps
    end
  end
end
