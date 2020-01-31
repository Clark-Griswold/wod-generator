class AlterLogsAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :user_id, :integer
    add_index :logs, :user_id
  end
end
