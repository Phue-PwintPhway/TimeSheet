class CreateTimeRecords < ActiveRecord::Migration[7.0]
  def up
    create_table :time_records do |t|
      t.integer :user_id
      t.datetime :clock_in
      t.datetime :clock_out
      t.string :remark
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def down
    drop_table :time_records
  end
end
