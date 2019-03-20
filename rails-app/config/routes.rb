Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/home/index', to: 'home#index'

  #This is a latest
  post '/home/test', to: 'home#test'
end
