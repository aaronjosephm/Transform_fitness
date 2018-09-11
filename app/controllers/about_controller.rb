class AboutController < ApplicationController
  def show
    @aboutpage = ButterCMS::Page.get('*', 'about').data.fields

  end
end
