class MembersController < ApplicationController

	def show
		member
	end

	def dress_code
		member
	end

	def bylaws
		member
	end

	def edit
		member
	end

	def schedule
		member
	end

	def tracks
		member
	end

	def member
		@member = Member.find(session[:member_id])
	end

end