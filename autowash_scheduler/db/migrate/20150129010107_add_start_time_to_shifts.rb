class AddStartTimeToShifts < ActiveRecord::Migration
  def change
  	add_column :shifts, :shift_start, :datetime
  	add_column :shifts, :shift_end, :datetime
  end
end
