Rails.application.routes.draw do

  root 'static_pages#home'
  
  # get '/***' とすることで、***_path　という名前付きルートが使えるようになる
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
end
