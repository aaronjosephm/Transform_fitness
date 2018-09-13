class TestimonialsController < ApplicationController
  def show
    @testimonialspage = ButterCMS::Page.get('*', 'testimonials').data.fields
    @images = [@testimonialspage.before_after1, @testimonialspage.before_after2, @testimonialspage.before_after3, @testimonialspage.before_after4, @testimonialspage.before_after5, @testimonialspage.before_after6]
    @quotes = [@testimonialspage.chris_quote, @testimonialspage.aaron_quote, @testimonialspage.tyler_quote, @testimonialspage.client1_quote, @testimonialspage.client2_quote, @testimonialspage.client3_quote]
  end
end
