class MembersController < ApplicationController

	def index
		@member = Member.find(session[:member_id])
	end

	def bylaws
	end

	def edit
	end

	def schedule
	end

	def tracks
	end

end