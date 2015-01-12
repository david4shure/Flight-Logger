class AddUserIdToAircraft < ActiveRecord::Migration
  def change
    add_column :aircraft, :user_id, :integer
  end
end
