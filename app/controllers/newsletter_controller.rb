class NewsletterController < ApplicationController
	def index
		@newsletter = Newsletter.all
	end

	def new
		@newsletter = Newsletter.new
	end

	def sendNewsletter
		@newsletter.deliver
		redirect_to newsletter_index_path, notice: "Delivered"
	end
end
