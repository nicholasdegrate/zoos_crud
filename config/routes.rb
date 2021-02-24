Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/zoos', to: 'zoos#index', as: 'zoos'

  get '/zoos/new', to: 'zoos#new', as: "new_zoo"
  post '/zoos', to: 'zoos#create'
  
  get '/zoos/:id', to: 'zoos#show', as: 'zoo'

  get '/zoos/:id/edit', to: 'zoos#edit', as: 'edit_zoo'
  patch '/zoos/:id', to: 'zoos#update'

  delete '/zoos/:id', to: 'zoos#delete', as: 'delete_zoo'
end
