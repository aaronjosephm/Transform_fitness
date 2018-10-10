class BlogController < ApplicationController

  def index
    @posts = ButterCMS::Post.all({:page => 1, :page_size => 10})
  end

  def show
    slug = params[:slug]
    ButterCMS::Post.all({:page => 1, :page_size => 10}).each do |post|
      if (post.slug == slug)
        @post = post
      end
    end
  end

  def blog_of_day
    # @blogpage = ButterCMS::Page.get('*', 'blog').data.fields
    @post = ButterCMS::Post.all({:page => 1, :page_size => 10}).first
  end
end
