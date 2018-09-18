Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing', to: 'landing#show'

  get '/blog', to: 'blog#show'

  get '/contact', to: 'contact#show'

  post '/contact', to: 'contact#create'

  get '/about', to: 'about#show'

  get '/testimonials', to: 'testimonials#show'

  root to: 'landing#show'



  # get '/about', to: 'pages#about'

  # get '/contact', to: 'pages#contact'

  # get '/fitness', to: 'pages#fitness'

  # get '/mealplans', to: 'pages#mealplans'
end
