class WelcomeController < ApplicationController

	def index
		render :index
	end

	def about
		render :about
	end

	def join
		render :join
	end

	def multimedia
		render :multimedia
	end

	def support
		render :support
	end

	def history
		render :history
	end

	def concerts
		render :concerts
	end

end
