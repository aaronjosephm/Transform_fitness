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
    UserMailer.test(email, message, name).deliver_now
    flash[:alert] = "Your message has been sent! We will get back to you shortly!"
    redirect_to contact_path
    # respond_to do |format|
    #     format.html { render 'contact/show' }
    #     format.js
    #   end
  end

end
