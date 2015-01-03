class AddCivsToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :civilian, :float
  end
end
