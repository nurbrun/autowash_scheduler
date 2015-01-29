class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.integer :user_id
      t.integer :auto_wash_id

      t.timestamps
    end
  end
end
