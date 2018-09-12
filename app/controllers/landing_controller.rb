class LandingController < ApplicationController
   def show
    @landingpage = ButterCMS::Page.get('*', 'landing').data.fields
    @testimonialspage = ButterCMS::Page.get('*', 'testimonials').data.fields

  end
end
