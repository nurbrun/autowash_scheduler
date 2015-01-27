class CreateAutoWashes < ActiveRecord::Migration
  def change
    create_table :auto_washes do |t|
      t.string :location
      t.datetime :start
      t.datetime :close

      t.timestamps
    end
  end
end
