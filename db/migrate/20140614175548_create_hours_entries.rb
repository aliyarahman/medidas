class CreateHoursEntries < ActiveRecord::Migration
  def change
    create_table :hours_entries do |t|
      t.text :evidence
      t.float :num_hours
      t.datetime :shift_start
      t.datetime :shift_end
      t.timestamp :submitted
      t.integer :user_id

      t.timestamps
    end
  end
end
