class Newsletter < ApplicationRecord
	def deliver
		sleep 10
		@newsletter.update_attribute(:delivered_at, Time.zone.now)
	end
end
