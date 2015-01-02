class AddColumnsToLogEntries < ActiveRecord::Migration
  def change
    add_column :log_entries, :intermediate_airport, :string
    add_column :log_entries, :second_intermediate_airport, :string
    add_column :log_entries, :prop, :float
    add_column :log_entries, :jet, :float
    add_column :log_entries, :takeoffs, :integer
    add_column :log_entries, :nvg_takeoffs, :integer
    add_column :log_entries, :nvg_landings, :integer
    add_column :log_entries, :field_carrier_landings, :integer
    add_column :log_entries, :instructor_crew, :string
    add_column :log_entries, :turbine_time, :float
  end
end
