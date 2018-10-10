class LandingController < ApplicationController
   def show
    @landingpage = ButterCMS::Page.get('*', 'landing').data.fields
    @testimonialspage = ButterCMS::Page.get('*', 'testimonials').data.fields

  end

  def create
    name = params[:name]
    message = params[:message]
    email = params[:email]
    # raise
    if UserMailer.test(email, message, name).deliver_now
      flash[:notice] = "Your message has been sent! We will get back to you shortly!"
      UserMailer.notify.deliver_now
      UserMailer.msg_notify(email, message, name).deliver_now
      # raise
      redirect_to landing_path
    else
      flash[:alert] = "Please fill out required fields!"
      redirect_to landing_path
    end
  end
end
