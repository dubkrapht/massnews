class Newsletter < ApplicationRecord
	def deliver
		sleep 5
		update_attribute(:delivered_at, Time.zone.now)
	end
end
