class AddRelevantAttributesToAircraft < ActiveRecord::Migration
  def change
    add_column :aircraft, :tail_number, :string
    add_column :aircraft, :manufacturer, :string
    add_column :aircraft, :type_designator, :string
    add_column :aircraft, :model_name, :string
    add_column :aircraft, :fuel_burn, :float
    add_column :aircraft, :description, :string
    add_column :aircraft, :retired, :boolean
    add_column :aircraft, :class, :string
  end
end
