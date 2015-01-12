class RemoveAircraftModelAndTailNumberFromLogEntries < ActiveRecord::Migration
  def up
    remove_column :log_entries, :aircraft_model
    remove_column :log_entries, :tail_number
  end

  def down
    add_column :log_entries, :aircraft_model, :string
    add_column :log_entries, :tail_number, :string
  end
end
