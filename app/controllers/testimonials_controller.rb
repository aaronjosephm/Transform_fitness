class TestimonialsController < ApplicationController
  def show
    @testimonialspage = ButterCMS::Page.get('*', 'testimonials').data.fields

  end
end
