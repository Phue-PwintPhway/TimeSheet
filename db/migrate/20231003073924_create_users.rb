class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      t.string :name
      t.integer :role
      t.timestamps
      t.datetime :deleted_at
    end
  end

  def down
    drop_table :user
  end
end
