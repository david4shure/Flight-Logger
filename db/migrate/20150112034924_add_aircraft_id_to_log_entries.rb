class AddAircraftIdToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :aircraft_id, :integer
  end
end
