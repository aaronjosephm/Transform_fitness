class BlogController < ApplicationController
  def show
    @blogpage = ButterCMS::Page.get('*', 'blog').data.fields
    @post = ButterCMS::Post.search("Example Post", {page: 1, page_size: 10}).first
  end
end
