class CreateWods < ActiveRecord::Migration[5.2]
  def change
    create_table :wods do |t|
      t.string :category
      t.string :title
      t.text :description, array: true, default: []
      t.timestamps
    end
  end
end
