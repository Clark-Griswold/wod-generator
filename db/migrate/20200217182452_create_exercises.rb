class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :title
      t.integer :sets
      t.integer :reps
      t.references :log, index: true

      t.timestamps
    end
  end
end
