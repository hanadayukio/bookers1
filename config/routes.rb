Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get'/' => 'books#top'
  # get 'books/new'
  # get '/books' => 'books#index'
  # post '/books' => 'books#create'
  # get '/books/:id' => 'books#show',as: 'book'
  # get '/books/:id/edit' => 'books#edit',as: 'edit_list'
  # patch '/books/:id' => 'books#update',as: 'update_list'
  # delete '/books/:id' => 'books#destroy', as: 'destroy_list'
  resources :books
end
