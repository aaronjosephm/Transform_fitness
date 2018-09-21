class ContactController < ApplicationController
  def show
    @contactpage = ButterCMS::Page.get('*', 'contact').data.fields

  end

  def new

  end

  def create
    name = params[:name]
    question1 = params[:question1]
    question2 = params[:question2]
    question3 = params[:question3]
    level = params[:level]
    option = params[:gridRadios]
    email = params[:email]
    if UserMailer.form(email, question1, question2, question3, level, option, name).deliver_now
      flash[:alert] = "Your form has been sent! We will get back to you shortly!"
      redirect_to contact_path
    else
      flash[:alert] = "Please fill out required fields!"
      redirect_to contact_path
    end
    # respond_to do |format|
    #     format.html { render 'contact/show' }
    #     format.js
    #   end
  end

end
