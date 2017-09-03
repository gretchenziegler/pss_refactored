class MembersController < ApplicationController

  ADMIN_ID = 109

  def show
    authenticate_member
  end

  def roster
    allow_member
    @admin = Member.where(:section => ['Music Director', 'Pianist'])
    @sopranos = Member.where(['section LIKE ?', "%Soprano%"]).order('l_name ASC')
    @altos = Member.where(['section LIKE ?', "%Alto%"]).order('l_name ASC')
    @tenors = Member.where(section: 'Tenor').order('l_name ASC')
    @baritones = Member.where(section: 'Baritone').order('l_name ASC')
    @basses = Member.where(section: 'Bass').order('l_name ASC')
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

  def update
    authenticate_member
    member.update({f_name: params[:f_name], l_name: params[:l_name], address: params[:address], email: params[:email], phone_number: params[:phone_number]})

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
    @admin = Member.where(:section => ['Music Director', 'Pianist'])
    @sopranos = Member.where(['section LIKE ?', "%Soprano%"]).order('l_name ASC')
    @altos = Member.where(['section LIKE ?', "%Alto%"]).order('l_name ASC')
    @tenors = Member.where(section: 'Tenor').order('l_name ASC')
    @baritones = Member.where(section: 'Baritone').order('l_name ASC')
    @basses = Member.where(section: 'Bass').order('l_name ASC')
    @other = Member.where(:section => ['Guest', 'Former Member'])
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
