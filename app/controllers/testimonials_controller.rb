class TestimonialsController < ApplicationController
  def show
    @testimonialspage = ButterCMS::Page.get('*', 'testimonials').data.fields
    @images = [@testimonialspage.aaron_img, @testimonialspage.chris_img, @testimonialspage.tyler_img, @testimonialspage.client1_img, @testimonialspage.client2_img, @testimonialspage.client3_img]
    @quotes = [@testimonialspage.chris_quote, @testimonialspage.aaron_quote, @testimonialspage.tyler_quote, @testimonialspage.client1_quote, @testimonialspage.client2_quote, @testimonialspage.client3_quote]
  end
end
