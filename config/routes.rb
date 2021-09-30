Rails.application.routes.draw do
  resources :books
  root 'books#index'

  #get 'books/index' #simple match route
  #get 'books/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
