class QuotesController < ApplicationController
	def index 
		@quote = Quote.order("random()").first
	end
end
