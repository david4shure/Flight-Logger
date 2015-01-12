class RenameClassToAircraftClass < ActiveRecord::Migration
  def up
    rename_column :aircraft, :class, :aircraft_class
  end

  def down
    rename_column :aircraft, :aircraft_class, :class
  end
end
