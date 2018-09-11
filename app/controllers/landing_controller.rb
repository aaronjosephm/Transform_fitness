class LandingController < ApplicationController
   def show
    @landingpage = ButterCMS::Page.get('*', 'landing').data.fields

  end
end
