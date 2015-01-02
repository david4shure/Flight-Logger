class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :airport_type
      t.string :name
      t.decimal :lat, :precision => 15, :scale => 10, :default => 0.0
      t.decimal :long, :precision => 15, :scale => 10, :default => 0.0
      t.integer :elevation
      t.string :airport_identifier
      t.timestamps
    end
  end
end
