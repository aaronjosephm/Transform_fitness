require 'buttercms-ruby'
ButterCMS::api_token = '499094db5fcf4f0fd74a97acbddd48099de8fcf1';
# ButterCMS::Page.get('*', 'landing')
# ButterCMS::Page.get('*', 'about')
ButterCMS::Page.get('*', 'contact')
ButterCMS::Page.get('*', 'testimonials')
ButterCMS::Post.all({:page => 1, :page_size => 10})
