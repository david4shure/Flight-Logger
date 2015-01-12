class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircraft do |t|

      t.timestamps
    end
  end
end
