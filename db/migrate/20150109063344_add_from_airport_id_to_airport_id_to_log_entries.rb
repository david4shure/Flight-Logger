class AddFromAirportIdToAirportIdToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :from_airport_id, :integer
    add_column :log_entries, :to_airport_id, :integer
    remove_column :log_entries, :to
    remove_column :log_entries, :from
  end
end
