class SessionController < ApplicationController

	def new

	end

	def create
		member = Member.find_by(email: params[:email])
		if member and member.authenticate(params[:password])
			session[:member_id] = member.id
			redirect_to "/members/#{member.id}"
		else
			redirect_to "/session/new"
		end
	end

	def destroy
		reset_session
		redirect_to "/session/new"
	end

end
