class RenameTableLogentriesToLogEntries < ActiveRecord::Migration
  def change
    rename_table :logentries, :log_entries
  end
end
