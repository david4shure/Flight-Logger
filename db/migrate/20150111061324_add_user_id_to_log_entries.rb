class AddUserIdToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :user_id, :integer
  end
end
