class LocationController < ApplicationController

  def show
    @contactpage = ButterCMS::Page.get('*', 'contact').data.fields
  end

end
