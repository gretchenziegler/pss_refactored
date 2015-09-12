class MembersController < ApplicationController

  ADMIN_ID = 1

	def show
		authenticate_member
	end

	def dress_code
		allow_member
	end

	def bylaws
		allow_member
	end

	def edit
    authenticate_member
	end

  # def admin_edit
  #   authenticate_admin
  #   @member_edit = Member.find(params[:id])
  # end

  def update
    authenticate_member
    member.update({f_name: params[:f_name], l_name: params[:l_name], address: params[:address], email: params[:email], section: params[:section], phone_number: params[:phone_number]})

    redirect_to "/members/#{member.id}"
  end

	def schedule
		allow_member
	end

	def tracks
		allow_member
	end

  def admin
    authenticate_admin
    @members = Member.all
  end

  def new
    authenticate_admin
  end

  def create
    Member.create({f_name: params[:f_name], l_name: params[:l_name], address: params[:address], email: params[:email], password: params[:password], section: params[:section], phone_number: params[:phone_number]})

    redirect_to "/members/admin"
  end

  def destroy
    authenticate_admin
    member_to_destroy = Member.find(params[:id])
    member_to_destroy.destroy
    redirect_to "/members/admin"
  end

  def authenticate_member
    if session[:member_id] == params[:id].to_i
      member
    else
      redirect_to "/session/new"
    end
  end

  def allow_member
    if session[:member_id]
      member
    else
      redirect_to "/session/new"
    end
  end

	def member
		@member = Member.find(session[:member_id])
	end

  def authenticate_admin
    if session[:member_id] == ADMIN_ID
      member
    else
      redirect_to "/members/#{member.id}"
    end
  end

end
