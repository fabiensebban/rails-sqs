Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/test', to: 'home#test'

  post '/', to: 'home#catchall'
end
