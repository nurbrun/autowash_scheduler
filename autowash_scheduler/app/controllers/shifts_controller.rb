class ShiftsController < ApplicationController
	before_filter :load_auto_wash

	def create

		@shift = @auto_wash.shifts.build(shift_params)
	
			if @shift.save
				redirect_to auto_washes_path, notice: 'Shift booked successfully'
			else
				render 'auto_washes/show'
			end

	end
	def destroy
		@shift = Shift.find(params[:id])
		@shift.destroy
		redirect_to shifts_path
	end

private
	def shift_params
		params.require(:shift).permit(:auto_wash_id, :user_id, :shift_start, :shift_end)
	end

  	def load_auto_wash
  		@auto_wash = AutoWash.find(params[:auto_wash_id])
  	end

end
