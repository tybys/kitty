class AdminsController < ApplicationController
	def index
		@users = User.all
		@cats = Cat.all
	end

	def show

	end
end
