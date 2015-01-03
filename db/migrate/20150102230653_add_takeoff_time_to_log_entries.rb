class AddTakeoffTimeToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :takeoff_time, :datetime
    add_column :log_entries, :landing_time, :datetime
  end
end
