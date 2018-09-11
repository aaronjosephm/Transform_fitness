require 'buttercms-ruby'
ButterCMS::api_token = '2cd7f8beb79b1fffb658101a6bd64669639cce9c';
ButterCMS::Page.get('*', 'landing')
ButterCMS::Page.get('*', 'blog')
ButterCMS::Page.get('*', 'about')
ButterCMS::Page.get('*', 'contact')
ButterCMS::Page.get('*', 'testimonials')
ButterCMS::Post.all({:page => 1, :page_size => 10})
