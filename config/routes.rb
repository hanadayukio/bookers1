Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get'/' => 'books#top'
  get 'books/new'
  get '/books' => 'books#index'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show',as: 'book'
  get '/books/:id/edit' => 'books#edit',as: 'edit_list'
  patch '/books/:id' => 'books#update',as: 'update_list'
  
end
