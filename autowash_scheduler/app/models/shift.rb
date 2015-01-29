class Shift < ActiveRecord::Base
	belongs_to :auto_wash
	belongs_to :user
end
