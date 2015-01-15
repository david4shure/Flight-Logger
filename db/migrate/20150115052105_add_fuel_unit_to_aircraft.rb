class AddFuelUnitToAircraft < ActiveRecord::Migration
  def change
    add_column :aircraft, :fuel_unit, :string
  end
end
