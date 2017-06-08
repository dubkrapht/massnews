class NewsletterController < ApplicationController
	def index
		@newsletter = Newsletter.all
	end

	def new
		@newsletter = Newsletter.new
	end

	def sendNewsletter
		@newsletter = Newsletter.first #replace this with an id afterwards
		@newsletter.deliver
		flash[:notice] = "Delivered"
		redirect_to newsletter_path
	end
end
