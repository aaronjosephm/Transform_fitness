class ContactController < ApplicationController
  def show
    @contactpage = ButterCMS::Page.get('*', 'contact').data.fields

  end

  def new

  end

  def create
    name = params[:name]
    message = params[:message]
    email = params[:email]
    UserMailer.test(email).deliver_now

  end


end
