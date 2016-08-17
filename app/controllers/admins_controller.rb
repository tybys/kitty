class AdminsController < ApplicationController
	before_filter lambda { @body_class = 'admin-page' }
	def index
		@users = User.all
		@cats = Cat.all
	end

	def show

	end
end
