class CreateLogentries < ActiveRecord::Migration
  def change
    create_table :logentries do |t|

      t.timestamps
    end
  end
end
